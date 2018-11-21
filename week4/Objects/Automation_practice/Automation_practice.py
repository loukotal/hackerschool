# link_women = 'href="http://automationpractice.com/index.php?id_category=3&controller=category"'

# # Women category page
# span_cat_name = "class:cat-name"
# cat_name = "Women "
# product_dropdown_filter = "id:selectProductSort"
# product_list = "class:product_list"
# btn_sort_by = "id:selectProductSort"
# left_column = "id:left_column"
# #Go to category women
# link_women_category = 'class=sf-with-ul'

eshop_id = "id=menu-item-40"
button_filter = '//*[@id="woocommerce_price_filter-2"]/form/div/div[2]/button'
category_enum = {
    1: ["android", 1],
    2: ["html", 3],
    3: ["javascript", 3],
    4: ["selenium", 1]
}
product_categories = '//*[@id="woocommerce_product_categories-2"]/ul'
ul_products = '//*[@id="content"]/ul'

sorting = {
    "Sort by popularity": "Selenium Ruby",
    "Sort by average rating": "Functional Programming in JS",
    "Sort by newness": "HTML5 WebApp Develpment",
    "Sort by price: low to high": "JS Data Structures and Algorithm",
    "Sort by price: high to low": "Selenium Ruby",
}

dropdown_sort = "name:orderby"