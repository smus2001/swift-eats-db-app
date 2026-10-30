from flask import Flask, render_template, request, redirect, abort
import mysql.connector
from db import query, execute

app = Flask(__name__)
CATEGORIES = ["Pakistani", "Fast Food", "Cakes and Bakery", "Desserts", "Pizza",
              "Burgers", "Biryani", "Sandwiches", "Beverages", "Shawarma",
              "Handi and Karhai", "Chinese", "Italian", "Samosa", "Pulao",
              "Tea and Coffee"]
def get_areas():
    return query("""
        SELECT a.area_id, a.area_name, c.city_name
        FROM areas a JOIN cities c ON c.city_id = a.city_id
        WHERE c.is_serviced
        ORDER BY c.city_name, a.area_name
    """)
@app.route("/")
def home():
    rows = query("SELECT COUNT(*) AS n FROM orders")
    return f"Connected! Orders in database: {rows[0]['n']}"

@app.route("/restaurants")
def restaurants():
    q = request.args.get("q", "").strip()
    rows = query("""
        SELECT r.restaurant_id, r.restaurant_name, r.category,
               r.cost_bracket, r.rating, r.is_active,
               a.area_name, c.city_name
        FROM restaurants r
        JOIN areas a  ON a.area_id = r.area_id
        JOIN cities c ON c.city_id = a.city_id
        WHERE r.restaurant_name LIKE %s
           OR r.category LIKE %s
           OR c.city_name LIKE %s
        ORDER BY c.city_name, r.restaurant_name
    """, (f"%{q}%", f"%{q}%", f"%{q}%"))
    return render_template("restaurants.html", restaurants=rows, q=q)
@app.route("/restaurants/add", methods=["GET", "POST"])
def add_restaurant():
    error = None
    if request.method == "POST":
        f = request.form
        try:
            execute("""
                INSERT INTO restaurants (restaurant_code, restaurant_name, area_id,
                                         address_block, category, cost_bracket,
                                         avg_cost_per_item, rating)
                VALUES (%s, %s, %s, %s, %s, %s, %s, %s)
            """, (f["restaurant_code"].upper(), f["restaurant_name"], f["area_id"],
                  f["address_block"], f["category"], f["cost_bracket"],
                  f["avg_cost_per_item"], f["rating"]))
            return redirect("/restaurants")
        except mysql.connector.Error as e:
            if e.errno == 1062:
                error = "That restaurant code already exists."
            else:
                error = "The database rejected the data: " + str(e.msg)
    areas = get_areas()
    return render_template("restaurant_form.html", areas=areas,
                           categories=CATEGORIES, error=error, v=request.form)
@app.route("/restaurants/<int:rid>/edit", methods=["GET", "POST"])
def edit_restaurant(rid):
    error = None
    if request.method == "POST":
        f = request.form
        values = f
        try:
            execute("""
                UPDATE restaurants
                SET restaurant_code = %s, restaurant_name = %s, area_id = %s,
                    address_block = %s, category = %s, cost_bracket = %s,
                    avg_cost_per_item = %s, rating = %s, is_active = %s
                WHERE restaurant_id = %s
            """, (f["restaurant_code"].upper(), f["restaurant_name"], f["area_id"],
                  f["address_block"], f["category"], f["cost_bracket"],
                  f["avg_cost_per_item"], f["rating"],
                  1 if f.get("is_active") else 0, rid))
            return redirect("/restaurants")
        except mysql.connector.Error as e:
            if e.errno == 1062:
                error = "That restaurant code already exists."
            else:
                error = "The database rejected the data: " + str(e.msg)
    else:
        rows = query("SELECT * FROM restaurants WHERE restaurant_id = %s", (rid,))
        if not rows:
            abort(404)
        values = rows[0]
    return render_template("restaurant_form.html", areas=get_areas(),
                           categories=CATEGORIES, error=error, v=values, editing=True)
@app.route("/restaurants/<int:rid>/delete", methods=["POST"])
def delete_restaurant(rid):
    try:
        execute("DELETE FROM restaurants WHERE restaurant_id = %s", (rid,))
    except mysql.connector.Error as e:
        if e.errno == 1451:
            return render_template(
                "error.html", back="/restaurants",
                message="This restaurant has menu items or orders, so it cannot be "
                        "deleted. Untick Active in Edit to retire it instead."), 400
        raise
    return redirect("/restaurants")
if __name__ == "__main__":
    app.run(debug=True)

