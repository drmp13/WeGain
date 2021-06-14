import UIKit
import CoreData

class MealModel{
    let context = PersistenceManager.shared.persistentContainer.viewContext
  
  

  

  func initDefaultMeals(){
    let meals = [
        [
        "name": "Your Favorite Yogurt Muffins",
        "calorie": "186.17",
        "protein": "3.13",
        "carbo": "22.84",
        "fat": "9.14",
        "portion": "61.871904382389"
        ],
        [
        "name": "Avocado Dip Recipe (Avocado Crema)",
        "calorie": "103.12",
        "protein": "2.26",
        "carbo": "10.17",
        "fat": "5.93",
        "portion": "114.8"
        ],
        [
        "name": "Ramen Chicken Soup",
        "calorie": "461.3",
        "protein": "40.33",
        "carbo": "29.45",
        "fat": "20.24",
        "portion": "578.47309422493"
        ],
        [
        "name": "Better Chicken And Chickpea Paprikash",
        "calorie": "439.1",
        "protein": "22.44",
        "carbo": "61.63",
        "fat": "11.42",
        "portion": "354.36861286971"
        ],
        [
        "name": "Egg Sandwich",
        "calorie": "755.04",
        "protein": "41.99",
        "carbo": "41.39",
        "fat": "46.83",
        "portion": "369.34609370746"
        ],
        [
        "name": "Vanilla Sparkler",
        "calorie": "126.47",
        "protein": "0.94",
        "carbo": "30.22",
        "fat": "0.2",
        "portion": "233.48333333333"
        ],
        [
        "name": "Tea Slush",
        "calorie": "113.26",
        "protein": "1.8",
        "carbo": "25.75",
        "fat": "0.34",
        "portion": "148.22590366667"
        ],
        [
        "name": "Strawberry Flavored Water",
        "calorie": "369.72",
        "protein": "5.38",
        "carbo": "26.57",
        "fat": "26.88",
        "portion": "66.234441280365"
        ],
        [
        "name": "Cereal Milk Ice Cream",
        "calorie": "1171.07",
        "protein": "15.01",
        "carbo": "115.21",
        "fat": "72.24",
        "portion": "358.94117736816"
        ],
        [
        "name": "Taco Meat",
        "calorie": "252.91",
        "protein": "23.24",
        "carbo": "6.53",
        "fat": "14.87",
        "portion": "130.676218422"
        ],
        [
        "name": "Melt-In-Your-Mouth Meat Loaf",
        "calorie": "450.02",
        "protein": "29.21",
        "carbo": "37.16",
        "fat": "20.51",
        "portion": "204.50052367022"
        ],
        [
        "name": "Steak Rub",
        "calorie": "18.16",
        "protein": "0.58",
        "carbo": "3.88",
        "fat": "0.04",
        "portion": "18.65"
        ],
        [
        "name": "Greek Yogurt",
        "calorie": "257.18",
        "protein": "20.02",
        "carbo": "30.11",
        "fat": "6.3",
        "portion": "245"
        ],
        [
        "name": "Pork Paprikash",
        "calorie": "382.07",
        "protein": "11.79",
        "carbo": "48.72",
        "fat": "15.56",
        "portion": "209.50842125"
        ],
        [
        "name": "Middle Eastern Chicken & Chickpea Stew",
        "calorie": "271.26",
        "protein": "22.45",
        "carbo": "9.88",
        "fat": "15.77",
        "portion": "177.66475985816"
        ],
        [
        "name": "French Coffee (Caffe Francais)",
        "calorie": "71.07",
        "protein": "0.69",
        "carbo": "9.49",
        "fat": "3.37",
        "portion": "201.33333333333"
        ],
        [
        "name": "Making Your Own Soy Yogurt",
        "calorie": "234.82",
        "protein": "11.09",
        "carbo": "32.95",
        "fat": "6.52",
        "portion": "456.3105892"
        ],
        [
        "name": "Roast Turkey Breast With Gravy",
        "calorie": "121.7",
        "protein": "8.31",
        "carbo": "2.63",
        "fat": "8.66",
        "portion": "43.124821171875"
        ],
        [
        "name": "Roast Turkey Breast",
        "calorie": "35.08",
        "protein": "0.69",
        "carbo": "0.03",
        "fat": "3.58",
        "portion": "8.45"
        ],
        [
        "name": "Beet & Bean Burger (Northstar Burger)",
        "calorie": "314.83",
        "protein": "13.94",
        "carbo": "39.16",
        "fat": "11.38",
        "portion": "174.41686522588"
        ],
        [
        "name": "Sweet Sweet Potato (Vegetarian)",
        "calorie": "55.29",
        "protein": "0.94",
        "carbo": "7.44",
        "fat": "2.42",
        "portion": "42.447916666667"
        ],
        [
        "name": "Tomatoes Crunchy, Juicy, Sweet...(Bursting Tomato)",
        "calorie": "267.59",
        "protein": "8.85",
        "carbo": "25.5",
        "fat": "14.46",
        "portion": "217.23080954687"
        ],
        [
        "name": "Black Cow",
        "calorie": "841.67",
        "protein": "8.85",
        "carbo": "102.3",
        "fat": "44.12",
        "portion": "565.01930201731"
        ],
        [
        "name": "Sticken Chicken",
        "calorie": "296.73",
        "protein": "10.34",
        "carbo": "47.98",
        "fat": "7.05",
        "portion": "122.83020833333"
        ],
        [
        "name": "Steak Bites",
        "calorie": "521.11",
        "protein": "65.78",
        "carbo": "1.06",
        "fat": "28.19",
        "portion": "244.333685"
        ],
        [
        "name": "Duck Sauce",
        "calorie": "193.64",
        "protein": "0.44",
        "carbo": "47.53",
        "fat": "0.2",
        "portion": "154.25833333333"
        ],
        [
        "name": "Roasted Carrots With Carrot-Top Pesto",
        "calorie": "227.91",
        "protein": "1.78",
        "carbo": "5.89",
        "fat": "21.91",
        "portion": "79.065625"
        ],
        [
        "name": "Homemade Wisconsin Butter Burgers",
        "calorie": "690.42",
        "protein": "20.58",
        "carbo": "6.67",
        "fat": "64.6",
        "portion": "214.21665869531"
        ],
        [
        "name": "Waffle House Waffles",
        "calorie": "629.3",
        "protein": "14.6",
        "carbo": "80.4",
        "fat": "27.7",
        "portion": "213.541667896"
        ],
        [
        "name": "Salmon Sushi",
        "calorie": "439.15",
        "protein": "27.42",
        "carbo": "68.87",
        "fat": "6",
        "portion": "227"
        ],
        [
        "name": "Mashed Cauliflower",
        "calorie": "92.24",
        "protein": "5.19",
        "carbo": "7.74",
        "fat": "4.5",
        "portion": "141.76249994338"
        ],
        [
        "name": "Manti Meatballs",
        "calorie": "180.04",
        "protein": "5.44",
        "carbo": "13.68",
        "fat": "11.51",
        "portion": "75.168606758118"
        ],
        [
        "name": "Toffee-Coffee Pecan Scones With A Kahlua Glaze",
        "calorie": "1251.01",
        "protein": "11.85",
        "carbo": "170.95",
        "fat": "57.76",
        "portion": "323.98975348473"
        ],
        [
        "name": "Bacon, Leek, Tomato And Potato Soup",
        "calorie": "255.62",
        "protein": "13.2",
        "carbo": "16.57",
        "fat": "15.17",
        "portion": "444.84158725043"
        ],
        [
        "name": "Milk Punch",
        "calorie": "98.76",
        "protein": "2.57",
        "carbo": "19.44",
        "fat": "1.19",
        "portion": "65.11875"
        ],
        [
        "name": "Cereal Fried Ice Cream",
        "calorie": "4073.65",
        "protein": "4.38",
        "carbo": "24.15",
        "fat": "439.95",
        "portion": "504.70001220703"
        ],
        [
        "name": "Express Meat",
        "calorie": "77.42",
        "protein": "0.89",
        "carbo": "4.52",
        "fat": "6.2",
        "portion": "20.919791841879"
        ],
        [
        "name": "Hibiscus Tea & Guide To Medicinal Teas",
        "calorie": "8.58",
        "protein": "0.08",
        "carbo": "2.02",
        "fat": "0.02",
        "portion": "258.20785152912"
        ],
        [
        "name": "Pork Vindaloo",
        "calorie": "381.37",
        "protein": "34.19",
        "carbo": "16.25",
        "fat": "19.96",
        "portion": "605.20863834769"
        ],
        [
        "name": "Shrimp Zarzuela",
        "calorie": "230.21",
        "protein": "16.64",
        "carbo": "7.68",
        "fat": "14.77",
        "portion": "322.96285212766"
        ],
        [
        "name": "Spicy Soup",
        "calorie": "465.2",
        "protein": "51.46",
        "carbo": "14.06",
        "fat": "22.57",
        "portion": "340.48645856383"
        ],
        [
        "name": "Avocado Bites",
        "calorie": "487.68",
        "protein": "11.62",
        "carbo": "35.08",
        "fat": "33.43",
        "portion": "158.14583333333"
        ],
        [
        "name": "Moon Pie Pie",
        "calorie": "804.16",
        "protein": "10.66",
        "carbo": "107.38",
        "fat": "36.89",
        "portion": "202.82196314717"
        ],
        [
        "name": "One Kale Salad Base, Three Different Salads",
        "calorie": "229.62",
        "protein": "11.21",
        "carbo": "15.18",
        "fat": "13.79",
        "portion": "87.798958480358"
        ],
        [
        "name": "Spicy Pork",
        "calorie": "93.37",
        "protein": "3.06",
        "carbo": "8.09",
        "fat": "5.42",
        "portion": "53.875000288124"
        ],
        [
        "name": "Taco Pizza",
        "calorie": "384.74",
        "protein": "27.81",
        "carbo": "16.76",
        "fat": "22.94",
        "portion": "308.0883694645"
        ],
        [
        "name": "Poached Fruit",
        "calorie": "295.93",
        "protein": "1.71",
        "carbo": "68.15",
        "fat": "1.83",
        "portion": "313.09999847412"
        ],
        [
        "name": "Orange Juice",
        "calorie": "114.58",
        "protein": "1.74",
        "carbo": "25.79",
        "fat": "0.5",
        "portion": "248"
        ],
        [
        "name": "Chocolate Milkshake",
        "calorie": "13.44",
        "protein": "0",
        "carbo": "3.36",
        "fat": "0",
        "portion": "5"
        ],
        [
        "name": "Fermented Health Salad",
        "calorie": "50.29",
        "protein": "2.11",
        "carbo": "10.1",
        "fat": "0.16",
        "portion": "172.33333301544"
        ],
        [
        "name": "Avocado Dessert",
        "calorie": "240.82",
        "protein": "3.78",
        "carbo": "36.57",
        "fat": "8.83",
        "portion": "88.791666666667"
        ],
        [
        "name": "Fermented Dilly Carrots",
        "calorie": "57.02",
        "protein": "1.44",
        "carbo": "12.12",
        "fat": "0.31",
        "portion": "132.17725916667"
        ],
        [
        "name": "Ramen",
        "calorie": "551.13",
        "protein": "37.48",
        "carbo": "57.03",
        "fat": "19.24",
        "portion": "958.02198523656"
        ],
        [
        "name": "Crunchy Ramen Salad",
        "calorie": "132",
        "protein": "3.25",
        "carbo": "14.39",
        "fat": "6.83",
        "portion": "87.528385257348"
        ],
        [
        "name": "Spicy Chevre Pimiento Cheese",
        "calorie": "264.06",
        "protein": "17.09",
        "carbo": "5.34",
        "fat": "19.37",
        "portion": "98.404929507524"
        ],
        [
        "name": "Oatmeal Yeast Bread",
        "calorie": "156.09",
        "protein": "3.51",
        "carbo": "25.66",
        "fat": "4.38",
        "portion": "46.493750345749"
        ],
        [
        "name": "Turkey Burger",
        "calorie": "525.66",
        "protein": "40.92",
        "carbo": "41.14",
        "fat": "21.94",
        "portion": "425.8617241002"
        ],
        [
        "name": "Four Cheese Mac & Cheese",
        "calorie": "1037.97",
        "protein": "25.71",
        "carbo": "109.29",
        "fat": "55.33",
        "portion": "268.607220625"
        ],
        [
        "name": "Barbecued Chicken And Chickpea Quesadillas",
        "calorie": "1006.53",
        "protein": "56.3",
        "carbo": "99.13",
        "fat": "42.76",
        "portion": "355.99938599471"
        ],
        [
        "name": "Avocado Toast",
        "calorie": "755.46",
        "protein": "26.55",
        "carbo": "67.81",
        "fat": "42",
        "portion": "572.52222264558"
        ],
        [
        "name": "Fermented Juniper Berry Juice (Smreka)",
        "calorie": "55.35",
        "protein": "1.56",
        "carbo": "11.86",
        "fat": "0.19",
        "portion": "150.5"
        ],
        [
        "name": "Four Cheese Macaroni And Cheese",
        "calorie": "1711.24",
        "protein": "83.72",
        "carbo": "110.62",
        "fat": "103.77",
        "portion": "433.83276434243"
        ],
        [
        "name": "Spicy Chickpeas",
        "calorie": "275.8",
        "protein": "10.33",
        "carbo": "32.83",
        "fat": "11.46",
        "portion": "63.676667035465"
        ],
        [
        "name": "Waffle Brunch",
        "calorie": "364.15",
        "protein": "10.48",
        "carbo": "36.16",
        "fat": "19.73",
        "portion": "172.32812443624"
        ],
        [
        "name": "Lacto-Fermented Grape Juice",
        "calorie": "97.15",
        "protein": "4.18",
        "carbo": "19.09",
        "fat": "0.45",
        "portion": "89"
        ],
        [
        "name": "Spoiled Milk",
        "calorie": "742.85",
        "protein": "17.94",
        "carbo": "123.38",
        "fat": "19.73",
        "portion": "241.196185"
        ],
        [
        "name": "Raspberry Squares",
        "calorie": "172.08",
        "protein": "2.54",
        "carbo": "23.41",
        "fat": "7.59",
        "portion": "41.827777816194"
        ],
        [
        "name": "Milk Loaf",
        "calorie": "317.84",
        "protein": "7.41",
        "carbo": "59.85",
        "fat": "5.42",
        "portion": "90.933333794332"
        ],
        [
        "name": "Yogurt Cake (GâTeau Au Yaourt)",
        "calorie": "57.55",
        "protein": "2.67",
        "carbo": "2.64",
        "fat": "4.04",
        "portion": "55.424999982119"
        ],
        [
        "name": "Fruit Salad",
        "calorie": "146.45",
        "protein": "4.48",
        "carbo": "26.29",
        "fat": "2.6",
        "portion": "165.98257601261"
        ],
        [
        "name": "Supercharged Sushi Bowl",
        "calorie": "200.99",
        "protein": "11.47",
        "carbo": "27.9",
        "fat": "4.84",
        "portion": "490.375"
        ],
        [
        "name": "Appel Salade - Apple Salad",
        "calorie": "266.81",
        "protein": "3.71",
        "carbo": "41.44",
        "fat": "9.58",
        "portion": "217.4"
        ],
        [
        "name": "Guava Mango Passion Fruit Mini Cakes",
        "calorie": "475.24",
        "protein": "7.98",
        "carbo": "54.44",
        "fat": "25.06",
        "portion": "147.88734116157"
        ],
        [
        "name": "Fermented Eggs",
        "calorie": "1069.13",
        "protein": "96.12",
        "carbo": "10.3",
        "fat": "71.49",
        "portion": "881.9"
        ],
        [
        "name": "Three-Cheese Macaroni And Cheese",
        "calorie": "458.31",
        "protein": "25.11",
        "carbo": "41.27",
        "fat": "21.42",
        "portion": "187.48194461732"
        ],
        [
        "name": "Teriyaki Salmon",
        "calorie": "861",
        "protein": "82.38",
        "carbo": "10.7",
        "fat": "54.3",
        "portion": "425.9787536636"
        ],
        [
        "name": "Veg Spring Rolls",
        "calorie": "218.95",
        "protein": "10.05",
        "carbo": "39.65",
        "fat": "2.24",
        "portion": "76.839197680906"
        ],
        [
        "name": "Candy Cane Cake",
        "calorie": "1703.15",
        "protein": "16.16",
        "carbo": "203.57",
        "fat": "91.58",
        "portion": "455.22083377813"
        ],
        [
        "name": "Diy Creme De Menthe",
        "calorie": "390.29",
        "protein": "2.3",
        "carbo": "94.6",
        "fat": "0.3",
        "portion": "305.75"
        ],
        [
        "name": "Avocado Tzatziki",
        "calorie": "573.35",
        "protein": "8.31",
        "carbo": "17.18",
        "fat": "52.38",
        "portion": "298.15"
        ],
        [
        "name": "Very Chocolatey Chocolate Crinkles",
        "calorie": "1151.35",
        "protein": "16.63",
        "carbo": "191.48",
        "fat": "35.44",
        "portion": "296.250000461"
        ],
        [
        "name": "Raspberry Vinaigrette",
        "calorie": "254.54",
        "protein": "0.15",
        "carbo": "2.62",
        "fat": "27.05",
        "portion": "39.265563731771"
        ],
        [
        "name": "Duck Fat Potatoes",
        "calorie": "264.21",
        "protein": "5.83",
        "carbo": "28.21",
        "fat": "14.23",
        "portion": "240.896185"
        ],
        [
        "name": "Dilly Fish",
        "calorie": "100.28",
        "protein": "0.94",
        "carbo": "5.12",
        "fat": "8.45",
        "portion": "89.094444444444"
        ],
        [
        "name": "Rosemary Citrus Water",
        "calorie": "50.54",
        "protein": "0.86",
        "carbo": "11.43",
        "fat": "0.15",
        "portion": "1101.9500000477"
        ],
        [
        "name": "Ramen With Tofu",
        "calorie": "269.97",
        "protein": "16.08",
        "carbo": "31.77",
        "fat": "8.73",
        "portion": "401.66788995266"
        ],
        [
        "name": "Chocolate Chocolate Cake",
        "calorie": "525.17",
        "protein": "10.9",
        "carbo": "59.15",
        "fat": "27.22",
        "portion": "186.06592045564"
        ],
        [
        "name": "Spoiled Milk",
        "calorie": "742.85",
        "protein": "17.94",
        "carbo": "123.38",
        "fat": "19.73",
        "portion": "241.196185"
        ],
        [
        "name": "Aloo Methi Ki Sabji",
        "calorie": "128.67",
        "protein": "5.44",
        "carbo": "15.69",
        "fat": "4.91",
        "portion": "99.07507339865"
        ],
        [
        "name": "Sushi Sandwiches",
        "calorie": "272.61",
        "protein": "40.64",
        "carbo": "11.14",
        "fat": "7.28",
        "portion": "393.51309680939"
        ],
        [
        "name": "Beat-The-Heat Tea Shake",
        "calorie": "157.77",
        "protein": "4.04",
        "carbo": "23.63",
        "fat": "5.23",
        "portion": "171.625"
        ],
        [
        "name": "Watermelon Milkshake",
        "calorie": "187.1",
        "protein": "3.1",
        "carbo": "36.36",
        "fat": "3.25",
        "portion": "237.16666666667"
        ],
        [
        "name": "Fruit Pizza",
        "calorie": "231.01",
        "protein": "2.38",
        "carbo": "31.44",
        "fat": "10.64",
        "portion": "55.815277854611"
        ],
        [
        "name": "Spicy Rice",
        "calorie": "365.16",
        "protein": "5.53",
        "carbo": "49.36",
        "fat": "16.18",
        "portion": "279.975"
        ],
        [
        "name": "Avocado- Mascarpone Dream Cream Dessert",
        "calorie": "346.89",
        "protein": "5.25",
        "carbo": "17.74",
        "fat": "28.33",
        "portion": "129.625"
        ],
        [
        "name": "Cereal Bars",
        "calorie": "1410.13",
        "protein": "12.21",
        "carbo": "198.28",
        "fat": "63.13",
        "portion": "310.325"
        ],
        [
        "name": "Roast Chicken Breast With Fingerling Potatoes",
        "calorie": "258.38",
        "protein": "12.66",
        "carbo": "38.07",
        "fat": "6.16",
        "portion": "270.76285491325"
        ],
        [
        "name": "Taco Burger",
        "calorie": "891.27",
        "protein": "55.76",
        "carbo": "77.37",
        "fat": "39.86",
        "portion": "463.74002120458"
        ],
        [
        "name": "Salmon With Smoked Salmon Butter",
        "calorie": "493.55",
        "protein": "32.08",
        "carbo": "0.06",
        "fat": "40.56",
        "portion": "185.02970939107"
        ],
        [
        "name": "Turmeric Tea",
        "calorie": "418.48",
        "protein": "3.66",
        "carbo": "17.23",
        "fat": "37.21",
        "portion": "168.56666666667"
        ],
        [
        "name": "Forbidden Fruit",
        "calorie": "46.66",
        "protein": "0.4",
        "carbo": "9.85",
        "fat": "0.63",
        "portion": "51.427260253578"
        ],
        [
        "name": "Candy Cane Cake",
        "calorie": "446.24",
        "protein": "5.33",
        "carbo": "61.38",
        "fat": "19.93",
        "portion": "133.80531034867"
        ],
        [
        "name": "Easy Chicken Pot Pie / Pies",
        "calorie": "398.78",
        "protein": "17.1",
        "carbo": "36.04",
        "fat": "20.69",
        "portion": "279.21948223711"
        ],
        [
        "name": "Sausage Rolls",
        "calorie": "760.98",
        "protein": "26.31",
        "carbo": "65.24",
        "fat": "43.87",
        "portion": "278.1105925"
        ],
        [
        "name": "Fruit Tart",
        "calorie": "409.57",
        "protein": "3.8",
        "carbo": "51.43",
        "fat": "20.96",
        "portion": "89.592708319426"
        ],
        [
        "name": "Salmon With Cherry-Berry Avocado Relish",
        "calorie": "3108.5",
        "protein": "15.43",
        "carbo": "736.12",
        "fat": "11.37",
        "portion": "1836.8750000019"
        ],
        [
        "name": "Fruity Fruit Dip",
        "calorie": "435.31",
        "protein": "3.49",
        "carbo": "50.77",
        "fat": "24.25",
        "portion": "134.66023484375"
        ],
        [
        "name": "Pumpkin Yeast Bread",
        "calorie": "2423.58",
        "protein": "73.32",
        "carbo": "452.77",
        "fat": "35.47",
        "portion": "874.3765661002"
        ],
        [
        "name": "Strawberry Sparkler",
        "calorie": "267.48",
        "protein": "0.33",
        "carbo": "18.74",
        "fat": "21.24",
        "portion": "215.36267089844"
        ],
        [
        "name": "Fermented Zucchini Pickles",
        "calorie": "23.71",
        "protein": "1.61",
        "carbo": "3.71",
        "fat": "0.27",
        "portion": "100.94583333333"
        ],
        [
        "name": "Creamy Pomegranate Ice Cream",
        "calorie": "452.59",
        "protein": "1.26",
        "carbo": "78.87",
        "fat": "14.67",
        "portion": "191.17777777778"
        ],
        [
        "name": "Delicious Strawberry Cupcakes & Strawberry Frosting",
        "calorie": "506.4",
        "protein": "3.57",
        "carbo": "68.63",
        "fat": "24.18",
        "portion": "126.06805563239"
        ],
        [
        "name": "Caramel Macchiato Venti",
        "calorie": "841.19",
        "protein": "12.4",
        "carbo": "115.44",
        "fat": "36.65",
        "portion": "552.696185"
        ],
        [
        "name": "Salmon With Smoked Salmon Butter",
        "calorie": "493.55",
        "protein": "32.08",
        "carbo": "0.06",
        "fat": "40.56",
        "portion": "185.02970939107"
        ],
        [
        "name": "Steak Frites",
        "calorie": "444.07",
        "protein": "36.75",
        "carbo": "49.11",
        "fat": "11.18",
        "portion": "249.34201879433"
        ],
        [
        "name": "Crispy Cereal Marshmallows",
        "calorie": "1735.11",
        "protein": "8.78",
        "carbo": "422.15",
        "fat": "1.27",
        "portion": "905.54268836975"
        ],
        [
        "name": "Bbq Cheeseburger Kebab",
        "calorie": "91.79",
        "protein": "3.59",
        "carbo": "8.03",
        "fat": "5.04",
        "portion": "117.82071411458"
        ],
        [
        "name": "Cherry-Port Glazed Pork Loin Roast",
        "calorie": "79.06",
        "protein": "2.52",
        "carbo": "8.98",
        "fat": "3.67",
        "portion": "26.001349187722"
        ],
        [
        "name": "Murgh Achari Kebab",
        "calorie": "990.17",
        "protein": "85.6",
        "carbo": "0.98",
        "fat": "71.54",
        "portion": "469.20000004768"
        ],
        [
        "name": "Yeast-Free Bread",
        "calorie": "105.44",
        "protein": "3.35",
        "carbo": "22.99",
        "fat": "0.01",
        "portion": "58.134945147886"
        ],
        [
        "name": "Potato Stack (Scalloped Potatoes)",
        "calorie": "407.75",
        "protein": "8.5",
        "carbo": "60.8",
        "fat": "14.51",
        "portion": "373.74945873022"
        ],
        [
        "name": "Strawberry Milk",
        "calorie": "159.71",
        "protein": "1.94",
        "carbo": "24.2",
        "fat": "6.13",
        "portion": "75.041666666667"
        ],
        [
        "name": "Sausage Bread",
        "calorie": "433.18",
        "protein": "15.42",
        "carbo": "26.03",
        "fat": "29.71",
        "portion": "195.10816484742"
        ],
        [
        "name": "Egg Rice",
        "calorie": "892.03",
        "protein": "32.27",
        "carbo": "121.91",
        "fat": "30.59",
        "portion": "253.6"
        ],
        [
        "name": "Japanese Sweet Potato Fries With Fried Rosemary",
        "calorie": "1142.41",
        "protein": "2.25",
        "carbo": "21.25",
        "fat": "116.49",
        "portion": "189.349523125"
        ],
        [
        "name": "Easy Chicken Ramen",
        "calorie": "433.81",
        "protein": "16.48",
        "carbo": "75.62",
        "fat": "7.27",
        "portion": "372.31047328125"
        ],
        [
        "name": "Veg Potato Patty...",
        "calorie": "145.89",
        "protein": "7.24",
        "carbo": "20.73",
        "fat": "3.78",
        "portion": "347.94981622696"
        ],
        [
        "name": "Greek Chicken Kebab",
        "calorie": "551.67",
        "protein": "36.96",
        "carbo": "39.28",
        "fat": "27.41",
        "portion": "261.0961856915"
        ],
        [
        "name": "Avocado Pesto",
        "calorie": "590.02",
        "protein": "9.11",
        "carbo": "31.9",
        "fat": "47.33",
        "portion": "392.375"
        ],
        [
        "name": "Fish Tacos",
        "calorie": "404.74",
        "protein": "28.6",
        "carbo": "24.75",
        "fat": "21.26",
        "portion": "461.30380901042"
        ],
        [
        "name": "Homemade Tomato Sauce (Salsa De Tomate)",
        "calorie": "21.99",
        "protein": "1.04",
        "carbo": "3.93",
        "fat": "0.23",
        "portion": "98.166666666667"
        ],
        [
        "name": "Fruity Yogurt Fruit Leather",
        "calorie": "76.18",
        "protein": "2.54",
        "carbo": "11.78",
        "fat": "2.1",
        "portion": "123"
        ],
        [
        "name": "Turmeric Milk",
        "calorie": "130.25",
        "protein": "1.2",
        "carbo": "10.44",
        "fat": "9.3",
        "portion": "277.71838274039"
        ],
        [
        "name": "Zucchini Pie",
        "calorie": "217.68",
        "protein": "7.36",
        "carbo": "23.22",
        "fat": "10.6",
        "portion": "175.7250002305"
        ],
        [
        "name": "Mushroom Soup",
        "calorie": "567.76",
        "protein": "27.67",
        "carbo": "54",
        "fat": "26.79",
        "portion": "748.76380541667"
        ],
        [
        "name": "Tommy Fries",
        "calorie": "641.44",
        "protein": "12.81",
        "carbo": "35.74",
        "fat": "49.69",
        "portion": "205.40002507915"
        ],
        [
        "name": "Tomato Cucumber Salad (Salad Shirazi)",
        "calorie": "112.58",
        "protein": "2.35",
        "carbo": "7.42",
        "fat": "8.16",
        "portion": "152.625"
        ],
        [
        "name": "Fat Flush Water",
        "calorie": "45.49",
        "protein": "0.81",
        "carbo": "10.03",
        "fat": "0.23",
        "portion": "853.1927189827"
        ],
        [
        "name": "Shrimp Stirfry",
        "calorie": "567.07",
        "protein": "28.2",
        "carbo": "32.91",
        "fat": "35.85",
        "portion": "480.98330640793"
        ],
        [
        "name": "Un-Fried French Fries",
        "calorie": "583.42",
        "protein": "8.47",
        "carbo": "28.46",
        "fat": "48.41",
        "portion": "260.80833333333"
        ],
        [
        "name": "Watermelon Milkshake",
        "calorie": "591.74",
        "protein": "13.97",
        "carbo": "100.08",
        "fat": "15.06",
        "portion": "231.95833333333"
        ],
        [
        "name": "Tomato Salad -(Saladi Ya Nyanya)",
        "calorie": "35.7",
        "protein": "1.57",
        "carbo": "6.77",
        "fat": "0.26",
        "portion": "129.8"
        ],
        [
        "name": "Egg Scramble",
        "calorie": "335.69",
        "protein": "24.67",
        "carbo": "18.78",
        "fat": "17.99",
        "portion": "576.40097489242"
        ],
        [
        "name": "Vanilla Cupcakes With Vanilla Frosting",
        "calorie": "442.06",
        "protein": "2.3",
        "carbo": "52.1",
        "fat": "24.94",
        "portion": "99.731597222222"
        ],
        [
        "name": "Easy Creamy Melon Ice Cream",
        "calorie": "150.5",
        "protein": "1.18",
        "carbo": "26.67",
        "fat": "4.34",
        "portion": "63.487500011921"
        ],
        [
        "name": "Coffee Toffee",
        "calorie": "1074.23",
        "protein": "6.52",
        "carbo": "93.22",
        "fat": "75.03",
        "portion": "188.0078125"
        ],
        [
        "name": "Gefilte Fish",
        "calorie": "276.1",
        "protein": "34.78",
        "carbo": "8.16",
        "fat": "11.59",
        "portion": "290.87006031249"
        ],
        [
        "name": "Mushroom Tortellini In Mushroom Broth",
        "calorie": "451.43",
        "protein": "22.63",
        "carbo": "60.92",
        "fat": "13.03",
        "portion": "342.94234762192"
        ],
        [
        "name": "Avocado Vinaigrette",
        "calorie": "398.71",
        "protein": "2.32",
        "carbo": "10.76",
        "fat": "38.49",
        "portion": "123.72488078125"
        ],
        [
        "name": "Duck Rillettes",
        "calorie": "35.08",
        "protein": "3.85",
        "carbo": "2.95",
        "fat": "0.88",
        "portion": "46.352734982967"
        ],
        [
        "name": "Candy Cane Cake Roll",
        "calorie": "730.5",
        "protein": "4.46",
        "carbo": "120.75",
        "fat": "25.52",
        "portion": "177.43645833333"
        ],
        [
        "name": "Afghani Kebab",
        "calorie": "815.81",
        "protein": "54.78",
        "carbo": "47.48",
        "fat": "45.2",
        "portion": "332.19362757355"
        ],
        [
        "name": "Vanilla Slice",
        "calorie": "552.72",
        "protein": "7.85",
        "carbo": "86.3",
        "fat": "19.57",
        "portion": "281.34957885742"
        ],
        [
        "name": "Egg Bhurji/ Indian Style Scrambled Eggs",
        "calorie": "143.04",
        "protein": "5.97",
        "carbo": "5.46",
        "fat": "10.81",
        "portion": "120.88831652328"
        ],
        [
        "name": "Salted Butterscotch",
        "calorie": "1126.01",
        "protein": "2.32",
        "carbo": "126.8",
        "fat": "67.72",
        "portion": "283.41685245623"
        ],
        [
        "name": "Strawberry Shortcake",
        "calorie": "249.1",
        "protein": "4.25",
        "carbo": "30.14",
        "fat": "12.39",
        "portion": "78.16874974966"
        ],
        [
        "name": "Dates Milkshake",
        "calorie": "82.89",
        "protein": "0.5",
        "carbo": "14.6",
        "fat": "2.5",
        "portion": "18.10000038147"
        ],
        [
        "name": "Salisbury Steak",
        "calorie": "350.67",
        "protein": "27.33",
        "carbo": "23.95",
        "fat": "16.17",
        "portion": "339.03455083333"
        ],
        [
        "name": "Pork Medallions With Fig & Port Wine Sauce",
        "calorie": "299.8",
        "protein": "12.25",
        "carbo": "34.26",
        "fat": "12.64",
        "portion": "212.45"
        ],
        [
        "name": "Jujeh Kabab (Spiced Chicken And Tomato Kebabs)",
        "calorie": "571.08",
        "protein": "50.9",
        "carbo": "30.13",
        "fat": "27.44",
        "portion": "668.7461856915"
        ],
        [
        "name": "Sausage Dip",
        "calorie": "212.34",
        "protein": "11.42",
        "carbo": "6.4",
        "fat": "15.67",
        "portion": "133.75616541667"
        ],
        [
        "name": "Spicy Olives",
        "calorie": "207.3",
        "protein": "1.37",
        "carbo": "6.92",
        "fat": "19.35",
        "portion": "126.59166758866"
        ],
        [
        "name": "Vanilla Popcorn",
        "calorie": "74.99",
        "protein": "0.2",
        "carbo": "3.65",
        "fat": "6.62",
        "portion": "18.708333333333"
        ],
        [
        "name": "Carrot Cake Oatmeal Bake",
        "calorie": "591.98",
        "protein": "11.01",
        "carbo": "57.14",
        "fat": "35.49",
        "portion": "254.19701093826"
        ],
        [
        "name": "Basic Salad Mix (Salad Spinner)",
        "calorie": "12.82",
        "protein": "0.5",
        "carbo": "2.45",
        "fat": "0.11",
        "portion": "43"
        ],
        [
        "name": "Oven Fries",
        "calorie": "43.41",
        "protein": "0.98",
        "carbo": "4.73",
        "fat": "2.29",
        "portion": "42.933335177326"
        ],
        [
        "name": "Cheesy Ramen Noodles",
        "calorie": "0",
        "protein": "0",
        "carbo": "0",
        "fat": "0",
        "portion": "473.60000610352"
        ],
        [
        "name": "Very Mushroomy Mushroom Tart",
        "calorie": "143.72",
        "protein": "7.25",
        "carbo": "13.86",
        "fat": "6.59",
        "portion": "126.69868859375"
        ],
        [
        "name": "Coffee Toffee Muffins",
        "calorie": "229.03",
        "protein": "3.51",
        "carbo": "33.56",
        "fat": "8.97",
        "portion": "73.325000027816"
        ],
        [
        "name": "Waffle Iron Stroopwafels [Caramel Waffles]",
        "calorie": "671.76",
        "protein": "7.13",
        "carbo": "99.12",
        "fat": "27.42",
        "portion": "165.08031821007"
        ],
        [
        "name": "Mini Durian Muffins",
        "calorie": "62.78",
        "protein": "1.51",
        "carbo": "9.58",
        "fat": "2.05",
        "portion": "34.156231595379"
        ],
        [
        "name": "Meat Loaf",
        "calorie": "747.48",
        "protein": "43.53",
        "carbo": "68.95",
        "fat": "33.06",
        "portion": "313.375264672"
        ],
        [
        "name": "Shrimp Scampi",
        "calorie": "403.45",
        "protein": "30.14",
        "carbo": "19.48",
        "fat": "22.77",
        "portion": "310.21540122043"
        ],
        [
        "name": "Pizza Hut Stuffed Crust Pizza",
        "calorie": "343.38",
        "protein": "18.91",
        "carbo": "39.07",
        "fat": "12.38",
        "portion": "153.05160727949"
        ],
        [
        "name": "Mushroom Risotto",
        "calorie": "294.47",
        "protein": "17.42",
        "carbo": "24.33",
        "fat": "14.16",
        "portion": "201.32395833333"
        ],
        [
        "name": "Caramel Milkshake",
        "calorie": "448.86",
        "protein": "6.48",
        "carbo": "52.09",
        "fat": "23.84",
        "portion": "197.75"
        ],
        [
        "name": "Spicy Tilapia",
        "calorie": "352.63",
        "protein": "35.72",
        "carbo": "5.67",
        "fat": "20.78",
        "portion": "261.13541758866"
        ],
        [
        "name": "Pineapple Water",
        "calorie": "406.48",
        "protein": "6.76",
        "carbo": "51.26",
        "fat": "19.38",
        "portion": "505.200982"
        ],
        [
        "name": "Beat And Eat Frosting",
        "calorie": "626",
        "protein": "4.11",
        "carbo": "152.13",
        "fat": "0.12",
        "portion": "212.58333333333"
        ],
        [
        "name": "Cherry Berry Crunch Crumble",
        "calorie": "335.94",
        "protein": "4.59",
        "carbo": "46.23",
        "fat": "14.74",
        "portion": "184.72764085107"
        ],
        [
        "name": "Meat And Vegetable Pot Pie / Pies",
        "calorie": "34.22",
        "protein": "1.88",
        "carbo": "1.96",
        "fat": "2.1",
        "portion": "24.783294599466"
        ],
        [
        "name": "Zucchini, Potato And Tomato Gratin",
        "calorie": "439.49",
        "protein": "16.49",
        "carbo": "79.49",
        "fat": "6.17",
        "portion": "599.04545583762"
        ],
        [
        "name": "Urban Legend Chocolate Chip Cookies",
        "calorie": "172.48",
        "protein": "2.75",
        "carbo": "20.27",
        "fat": "8.93",
        "portion": "39.217746016844"
        ],
        [
        "name": "Pumpkin Pie Ice Cream Pie",
        "calorie": "844.2",
        "protein": "29.07",
        "carbo": "45.62",
        "fat": "60.61",
        "portion": "328.06528913975"
        ],
        [
        "name": "Smothered Steak",
        "calorie": "109.83",
        "protein": "9.54",
        "carbo": "7.4",
        "fat": "4.68",
        "portion": "133.38546814389"
        ],
        [
        "name": "Beat The Heat! Chicken And Rice",
        "calorie": "289.45",
        "protein": "14.69",
        "carbo": "34.23",
        "fat": "10.42",
        "portion": "490.50000210106"
        ],
        [
        "name": "Crunchy Oat Cereal",
        "calorie": "458.83",
        "protein": "7.12",
        "carbo": "35.53",
        "fat": "32.03",
        "portion": "106.125"
        ],
        [
        "name": "Pizza",
        "calorie": "207.48",
        "protein": "12.07",
        "carbo": "7.75",
        "fat": "14.24",
        "portion": "148.88738078125"
        ],
        [
        "name": "Strawberry Milkshake",
        "calorie": "1385.49",
        "protein": "28.16",
        "carbo": "247.14",
        "fat": "31.59",
        "portion": "649.22155909868"
        ],
        [
        "name": "Meat Stock",
        "calorie": "1822.53",
        "protein": "53.91",
        "carbo": "4.66",
        "fat": "176.47",
        "portion": "419.3032976985"
        ],
        [
        "name": "Swiss Steak",
        "calorie": "153",
        "protein": "9.15",
        "carbo": "14.78",
        "fat": "6.36",
        "portion": "239.10632629693"
        ],
        [
        "name": "Multigrain Yeast Bread",
        "calorie": "245.52",
        "protein": "12.62",
        "carbo": "42.41",
        "fat": "2.82",
        "portion": "72.5703125"
        ],
        [
        "name": "Stuffed Mushrooms Aka Garlicky Basil Chicken In Mushroom Caps",
        "calorie": "455.2",
        "protein": "28.34",
        "carbo": "13.97",
        "fat": "31.77",
        "portion": "146.92636893157"
        ],
        [
        "name": "Fruit Salad",
        "calorie": "232.86",
        "protein": "2.43",
        "carbo": "42.55",
        "fat": "5.88",
        "portion": "97.911138565632"
        ],
        [
        "name": "Chinese Chews",
        "calorie": "1216.41",
        "protein": "20.52",
        "carbo": "175.3",
        "fat": "48.13",
        "portion": "337.88142606383"
        ],
        [
        "name": "Pork Pie",
        "calorie": "559.31",
        "protein": "14.03",
        "carbo": "27.99",
        "fat": "43.47",
        "portion": "142.274046711"
        ],
        [
        "name": "African Egg Roll/African Scotch Eggs",
        "calorie": "534.64",
        "protein": "34.03",
        "carbo": "17.55",
        "fat": "36.48",
        "portion": "235.55647665426"
        ],
        [
        "name": "Haitian Beet Salad (Salade De Betteraves)",
        "calorie": "330.76",
        "protein": "4.32",
        "carbo": "31.17",
        "fat": "20.98",
        "portion": "285.0375"
        ],
        [
        "name": "Fish Soup",
        "calorie": "268.78",
        "protein": "10.7",
        "carbo": "15.9",
        "fat": "18.04",
        "portion": "251.29988078125"
        ],
        [
        "name": "No Bake Chocolate Cake",
        "calorie": "321.28",
        "protein": "5.88",
        "carbo": "32.32",
        "fat": "18.72",
        "portion": "90.870475868384"
        ],
        [
        "name": "Homemade Creamy Cinnamon Ice Cream",
        "calorie": "369.81",
        "protein": "1.8",
        "carbo": "41.89",
        "fat": "21.67",
        "portion": "101.8203124404"
        ],
        [
        "name": "Farro Carrot Pomegranate Salad",
        "calorie": "214.02",
        "protein": "4.86",
        "carbo": "31.36",
        "fat": "7.68",
        "portion": "277.85416666667"
        ],
        [
        "name": "Egg Scramble",
        "calorie": "377.06",
        "protein": "25.8",
        "carbo": "20.83",
        "fat": "21.17",
        "portion": "577.4741580756"
        ],
        [
        "name": "Pizza",
        "calorie": "411.14",
        "protein": "10.86",
        "carbo": "71.09",
        "fat": "9.26",
        "portion": "118.50666814186"
        ],
        [
        "name": "Laughing Cow Sugar Cookies",
        "calorie": "231.97",
        "protein": "8.82",
        "carbo": "13.06",
        "fat": "16.05",
        "portion": "75.118749961257"
        ],
        [
        "name": "Insanely Chocolatey - Chocolate Nemesis Cake",
        "calorie": "869.65",
        "protein": "12.21",
        "carbo": "74.41",
        "fat": "58.13",
        "portion": "218.89696291667"
        ],
        [
        "name": "Lacto-Fermented Ginger Ale",
        "calorie": "78.5",
        "protein": "0.22",
        "carbo": "19.23",
        "fat": "0.08",
        "portion": "283.51772201061"
        ],
        [
        "name": "Purple Cow (Frozen Smoothie)",
        "calorie": "359.12",
        "protein": "7.22",
        "carbo": "65.96",
        "fat": "7.38",
        "portion": "237.4"
        ],
        [
        "name": "Chicken And Chickpea Tagine",
        "calorie": "2466.32",
        "protein": "92.36",
        "carbo": "58.09",
        "fat": "207.17",
        "portion": "632.63241658732"
        ],
        [
        "name": "Meat Pies",
        "calorie": "348.19",
        "protein": "18.3",
        "carbo": "21.38",
        "fat": "21.05",
        "portion": "191.38416448619"
        ],
        [
        "name": "Pork With Port Wine And Raisin Sauce",
        "calorie": "244.01",
        "protein": "12.96",
        "carbo": "17.84",
        "fat": "13.42",
        "portion": "110.57452364362"
        ],
        [
        "name": "Philadelphia Sushi Stacks",
        "calorie": "1311.2",
        "protein": "41.49",
        "carbo": "190.16",
        "fat": "42.73",
        "portion": "468.32309418917"
        ],
        [
        "name": "Korean Sushi",
        "calorie": "97.38",
        "protein": "4.53",
        "carbo": "11.56",
        "fat": "3.67",
        "portion": "72.999761740367"
        ],
        [
        "name": "Taco Pie!",
        "calorie": "307.93",
        "protein": "12.9",
        "carbo": "25.7",
        "fat": "17.06",
        "portion": "255.54369039062"
        ],
        [
        "name": "Cherry-Berry Pie",
        "calorie": "398.44",
        "protein": "4.87",
        "carbo": "46.63",
        "fat": "21.38",
        "portion": "179.19307956783"
        ],
        [
        "name": "Pain Au Chocolat- Chocolate Filled Croissants",
        "calorie": "340.79",
        "protein": "7.54",
        "carbo": "36.95",
        "fat": "18.09",
        "portion": "83.535992507025"
        ],
        [
        "name": "Hawaiian Yeast Bread",
        "calorie": "511.02",
        "protein": "17",
        "carbo": "88.65",
        "fat": "9.82",
        "portion": "182.3125006915"
        ],
        [
        "name": "Russian Potato Salad (Salat Olivier)",
        "calorie": "276.32",
        "protein": "15.36",
        "carbo": "33.02",
        "fat": "9.2",
        "portion": "256.78100852685"
        ],
        [
        "name": "Detox Water",
        "calorie": "94.32",
        "protein": "1",
        "carbo": "18.15",
        "fat": "1.97",
        "portion": "96.75"
        ],
        [
        "name": "Teriyaki Salmon",
        "calorie": "923.53",
        "protein": "85.01",
        "carbo": "15.13",
        "fat": "58.11",
        "portion": "527.89253732861"
        ],
        [
        "name": "Delicious Strawberry Cupcakes & Strawberry Frosting",
        "calorie": "506.4",
        "protein": "3.57",
        "carbo": "68.63",
        "fat": "24.18",
        "portion": "126.06805563239"
        ],
        [
        "name": "Shrimp Scampi",
        "calorie": "698.1",
        "protein": "4.42",
        "carbo": "7.94",
        "fat": "72.07",
        "portion": "179.5625"
        ],
        [
        "name": "Spicy Beef",
        "calorie": "379.8",
        "protein": "13.43",
        "carbo": "49.43",
        "fat": "14.26",
        "portion": "395.178125922"
        ],
        [
        "name": "Taco Pizza",
        "calorie": "826.68",
        "protein": "53.42",
        "carbo": "83.8",
        "fat": "30.87",
        "portion": "539.26528167725"
        ],
        [
        "name": "Beetle Juice",
        "calorie": "35.38",
        "protein": "0.65",
        "carbo": "7.89",
        "fat": "0.14",
        "portion": "65.3125"
        ],
        [
        "name": "Roasted Carrots With Carrot-Top Pesto",
        "calorie": "227.91",
        "protein": "1.78",
        "carbo": "5.89",
        "fat": "21.91",
        "portion": "79.065625"
        ],
        [
        "name": "Drinkable Yogurt",
        "calorie": "1077.42",
        "protein": "25.25",
        "carbo": "168.16",
        "fat": "33.75",
        "portion": "660"
        ],
        [
        "name": "Szechuan Fish",
        "calorie": "146.43",
        "protein": "26.85",
        "carbo": "6.26",
        "fat": "1.56",
        "portion": "257.3980925"
        ],
        [
        "name": "Raspberry Vinaigrette",
        "calorie": "695.67",
        "protein": "0.06",
        "carbo": "51.04",
        "fat": "54.59",
        "portion": "170.30000011525"
        ],
        [
        "name": "Mocha Milkshake",
        "calorie": "561.93",
        "protein": "11.23",
        "carbo": "79.99",
        "fat": "21.9",
        "portion": "236.68714234375"
        ],
        [
        "name": "La Salade Cote Cap Verte ( Chopped Egg Salad)",
        "calorie": "365.04",
        "protein": "8.7",
        "carbo": "5.55",
        "fat": "34.23",
        "portion": "121.493750461"
        ],
        [
        "name": "Coffee Reserve Iced Coffee",
        "calorie": "38.13",
        "protein": "0.59",
        "carbo": "3.01",
        "fat": "2.64",
        "portion": "19.6875"
        ],
        [
        "name": "Chicken, Mango And Chickpea Burgers",
        "calorie": "407.93",
        "protein": "28.57",
        "carbo": "48.88",
        "fat": "10.9",
        "portion": "184.03333333333"
        ],
        [
        "name": "Avocado Toast",
        "calorie": "276.96",
        "protein": "6.1",
        "carbo": "31.64",
        "fat": "14",
        "portion": "124.10000009835"
        ],
        [
        "name": "Milk Cake",
        "calorie": "134.89",
        "protein": "5.96",
        "carbo": "16.25",
        "fat": "5.12",
        "portion": "136.99843749404"
        ],
        [
        "name": "Amaranth Breakfast Cereal",
        "calorie": "184.66",
        "protein": "4.77",
        "carbo": "33.61",
        "fat": "3.46",
        "portion": "423.89187470017"
        ],
        [
        "name": "Roasted Fries",
        "calorie": "134",
        "protein": "0.3",
        "carbo": "2.54",
        "fat": "13.63",
        "portion": "28.472435955061"
        ],
        [
        "name": "Salted Fudge Brownies",
        "calorie": "698.97",
        "protein": "12.97",
        "carbo": "58.12",
        "fat": "46.07",
        "portion": "252.79559535683"
        ],
        [
        "name": "Egg Salad",
        "calorie": "255.27",
        "protein": "20.45",
        "carbo": "5.65",
        "fat": "16.77",
        "portion": "240.51875622043"
        ],
        [
        "name": "North Shore Shrimp Truck Shrimp",
        "calorie": "389.3",
        "protein": "26.77",
        "carbo": "6.51",
        "fat": "28.46",
        "portion": "207.6730925"
        ],
        [
        "name": "White Pizza Or Pizza Blanca",
        "calorie": "80.76",
        "protein": "7.97",
        "carbo": "7.9",
        "fat": "1.92",
        "portion": "89.696666666667"
        ],
        [
        "name": "Duck Pancakes",
        "calorie": "319.75",
        "protein": "2.27",
        "carbo": "35.38",
        "fat": "18.79",
        "portion": "159.46238088608"
        ],
        [
        "name": "Almond Tea",
        "calorie": "136.27",
        "protein": "2.07",
        "carbo": "29.18",
        "fat": "1.25",
        "portion": "134.66856013824"
        ],
        [
        "name": "Three-Cheese Grilled Cheese",
        "calorie": "455.91",
        "protein": "24.79",
        "carbo": "20.82",
        "fat": "30.39",
        "portion": "124.69437104464"
        ],
        [
        "name": "Mushroom Sauce",
        "calorie": "130.41",
        "protein": "2.95",
        "carbo": "7.07",
        "fat": "10.04",
        "portion": "132.74108231056"
        ],
        [
        "name": "Fermented Overnight Oats",
        "calorie": "453.09",
        "protein": "11.79",
        "carbo": "87.09",
        "fat": "6.4",
        "portion": "445"
        ],
        [
        "name": "Avocado Tacos",
        "calorie": "179.62",
        "protein": "4.07",
        "carbo": "23.37",
        "fat": "7.76",
        "portion": "112.349523125"
        ],
        [
        "name": "Zucchini, Tomato, Potato Pie",
        "calorie": "616.36",
        "protein": "25.26",
        "carbo": "29.41",
        "fat": "44.19",
        "portion": "493.5125"
        ],
        [
        "name": "Sweet Rolls",
        "calorie": "209.64",
        "protein": "3.94",
        "carbo": "33.26",
        "fat": "6.76",
        "portion": "53.087333517733"
        ],
        [
        "name": "Schüttel-Pizza (Shaken Pizza)",
        "calorie": "284.83",
        "protein": "13.52",
        "carbo": "22.87",
        "fat": "15.47",
        "portion": "103.33563563564"
        ],
        [
        "name": "Chickpea Salad With Chicken Breast",
        "calorie": "1050.62",
        "protein": "77.45",
        "carbo": "119.77",
        "fat": "29.08",
        "portion": "748.75007832809"
        ],
        [
        "name": "Burger Bites",
        "calorie": "64.58",
        "protein": "4.16",
        "carbo": "8.03",
        "fat": "1.76",
        "portion": "46.195216307511"
        ],
        [
        "name": "Raspberry Shortbread",
        "calorie": "960.59",
        "protein": "8.29",
        "carbo": "121.84",
        "fat": "48.9",
        "portion": "216.675"
        ],
        [
        "name": "Blueberry Guava Panna Cotta",
        "calorie": "259.48",
        "protein": "8.32",
        "carbo": "29.43",
        "fat": "12.06",
        "portion": "177.2661151886"
        ],
        [
        "name": "Almond Cream (Crema Di Mandorle)",
        "calorie": "344.87",
        "protein": "8.27",
        "carbo": "21.14",
        "fat": "25.25",
        "portion": "74.296921447391"
        ],
        [
        "name": "Creamy Strawberry Ice Cream",
        "calorie": "442.98",
        "protein": "6.67",
        "carbo": "78.85",
        "fat": "11.21",
        "portion": "304.43125"
        ],
        [
        "name": "Potato Casserole / Mashed Potatoes",
        "calorie": "275.95",
        "protein": "11",
        "carbo": "41.82",
        "fat": "7.18",
        "portion": "380.31978728939"
        ],
        [
        "name": "Flourless Chocolate Soufflé (Soufflé Au Chocolat)",
        "calorie": "571.06",
        "protein": "8.49",
        "carbo": "98.12",
        "fat": "16.07",
        "portion": "164.17436416667"
        ],
        [
        "name": "Sweet CrêPes",
        "calorie": "211.66",
        "protein": "4.92",
        "carbo": "23.06",
        "fat": "11.08",
        "portion": "97.96484375"
        ],
        [
        "name": "Tea Muffins",
        "calorie": "87.67",
        "protein": "1.91",
        "carbo": "10.94",
        "fat": "4.03",
        "portion": "22.481481481481"
        ],
        [
        "name": "Sausage Frittata",
        "calorie": "299.25",
        "protein": "14.38",
        "carbo": "16.56",
        "fat": "19.5",
        "portion": "178.38888908097"
        ],
        [
        "name": "Meat Lasagna",
        "calorie": "769.42",
        "protein": "41.56",
        "carbo": "39.06",
        "fat": "49.66",
        "portion": "268.83423291667"
        ],
        [
        "name": "Peking Duck Cookies",
        "calorie": "799.34",
        "protein": "9.6",
        "carbo": "98.46",
        "fat": "40.79",
        "portion": "177.93686589599"
        ],
        [
        "name": "Sweet Carrots",
        "calorie": "60.48",
        "protein": "2.65",
        "carbo": "8.43",
        "fat": "1.79",
        "portion": "79.987418462694"
        ],
        [
        "name": "Melt-In-Your-Mouth Meat Loaf",
        "calorie": "450.02",
        "protein": "29.21",
        "carbo": "37.16",
        "fat": "20.51",
        "portion": "204.50052367022"
        ],
        [
        "name": "Granola Cereal Cookies",
        "calorie": "102.64",
        "protein": "1.24",
        "carbo": "14.2",
        "fat": "4.54",
        "portion": "22.729722222222"
        ],
        [
        "name": "Strawberry Shortcake",
        "calorie": "616.57",
        "protein": "21.73",
        "carbo": "48.46",
        "fat": "37.31",
        "portion": "144.10833379433"
        ],
        [
        "name": "Sweet Twice Baked Sweet Potatoes",
        "calorie": "231.76",
        "protein": "4.29",
        "carbo": "21.07",
        "fat": "14.48",
        "portion": "150.18389801965"
        ],
        [
        "name": "Cherry Berry Pie",
        "calorie": "1358.72",
        "protein": "14.99",
        "carbo": "172.76",
        "fat": "67.53",
        "portion": "465.91903325688"
        ],
        [
        "name": "Cereal Milk",
        "calorie": "1119.52",
        "protein": "24.28",
        "carbo": "177.54",
        "fat": "34.69",
        "portion": "323.76193287774"
        ],
        [
        "name": "Almond Encrusted Salmon",
        "calorie": "324.73",
        "protein": "11.32",
        "carbo": "14.14",
        "fat": "24.76",
        "portion": "124.374047172"
        ],
        [
        "name": "Bistro-Style Pommes Frites (French Fries)",
        "calorie": "52.69",
        "protein": "0.58",
        "carbo": "5",
        "fat": "3.38",
        "portion": "32.936538461538"
        ],
        [
        "name": "Fish Sticks",
        "calorie": "495.63",
        "protein": "28.15",
        "carbo": "5.18",
        "fat": "40.26",
        "portion": "188.1480925"
        ],
        [
        "name": "Quinoa Avocado Sushi",
        "calorie": "404.97",
        "protein": "16.84",
        "carbo": "55.13",
        "fat": "13.01",
        "portion": "680.25"
        ],
        [
        "name": "No-Bake Yogurt Blueberry Cake",
        "calorie": "922.73",
        "protein": "11.17",
        "carbo": "31.78",
        "fat": "83.44",
        "portion": "234.7402237173"
        ],
        [
        "name": "Carrot Hummus",
        "calorie": "280.78",
        "protein": "7.44",
        "carbo": "23.02",
        "fat": "17.66",
        "portion": "162.78975916667"
        ],
        [
        "name": "Methi Chicken Curry",
        "calorie": "875.89",
        "protein": "30.75",
        "carbo": "35.67",
        "fat": "67.8",
        "portion": "257.87034902722"
        ],
        [
        "name": "Sweet Dream",
        "calorie": "587.45",
        "protein": "3.37",
        "carbo": "111.31",
        "fat": "14.3",
        "portion": "257"
        ],
        [
        "name": "Strawberry Waffles",
        "calorie": "558.44",
        "protein": "14.59",
        "carbo": "105.47",
        "fat": "8.69",
        "portion": "241.1"
        ],
        [
        "name": "Duck Confit",
        "calorie": "1812.67",
        "protein": "34.07",
        "carbo": "1.23",
        "fat": "185.72",
        "portion": "302.71262397369"
        ],
        [
        "name": "Cherry Berry Cheesecake Cobbler",
        "calorie": "264.47",
        "protein": "6.27",
        "carbo": "37.08",
        "fat": "10.12",
        "portion": "133.0551320182"
        ],
        [
        "name": "Strawberry Sundae",
        "calorie": "759.57",
        "protein": "15.34",
        "carbo": "96.07",
        "fat": "34.88",
        "portion": "229.35000038147"
        ],
        [
        "name": "Pizza Sauce And Pizza Dough",
        "calorie": "426.02",
        "protein": "7.29",
        "carbo": "51.74",
        "fat": "21.1",
        "portion": "240.35732311362"
        ],
        [
        "name": "Peaches & Cream Dream Muffins",
        "calorie": "182.12",
        "protein": "3.61",
        "carbo": "18.84",
        "fat": "10.26",
        "portion": "65.064444444444"
        ],
        [
        "name": "Syrian Kufta (Kawaj)",
        "calorie": "444.37",
        "protein": "31.69",
        "carbo": "18.46",
        "fat": "27.08",
        "portion": "452.50600205429"
        ],
        [
        "name": "Creamy Raspberry ‘Nice Cream’",
        "calorie": "302.64",
        "protein": "6.9",
        "carbo": "39.33",
        "fat": "13.08",
        "portion": "183.3742846875"
        ],
        [
        "name": "Turkey Sausage",
        "calorie": "118.76",
        "protein": "11.41",
        "carbo": "1.96",
        "fat": "7.25",
        "portion": "81.186546739811"
        ],
        [
        "name": "Strawberry Smoothie",
        "calorie": "36.52",
        "protein": "0.58",
        "carbo": "4.47",
        "fat": "1.82",
        "portion": "17.074999988079"
        ],
        [
        "name": "Garlic Fries",
        "calorie": "226.31",
        "protein": "7.27",
        "carbo": "30.34",
        "fat": "8.43",
        "portion": "248.40035212766"
        ],
        [
        "name": "Guava And Cream Cheese Pastry",
        "calorie": "275.05",
        "protein": "4.2",
        "carbo": "28.92",
        "fat": "15.84",
        "portion": "99.536189377308"
        ],
        [
        "name": "Wasabi Salmon",
        "calorie": "129.43",
        "protein": "6.34",
        "carbo": "0.77",
        "fat": "11.22",
        "portion": "51.416666666667"
        ],
        [
        "name": "Chewy Cherry Almond Bark",
        "calorie": "157.94",
        "protein": "2.33",
        "carbo": "16.55",
        "fat": "9.16",
        "portion": "35.868432083333"
        ],
        [
        "name": "Nut And Veg Rice Salad",
        "calorie": "630.87",
        "protein": "15.8",
        "carbo": "95.39",
        "fat": "20.68",
        "portion": "315.09555667639"
        ],
        [
        "name": "Banana Milkshake",
        "calorie": "494.53",
        "protein": "9.28",
        "carbo": "82.14",
        "fat": "14.32",
        "portion": "232.69166666667"
        ],
        [
        "name": "Fruit Sticks",
        "calorie": "219.97",
        "protein": "2.99",
        "carbo": "48.47",
        "fat": "1.57",
        "portion": "381.24363078125"
        ],
        [
        "name": "Paneer Sweet (Cottage Cheese Sweet)",
        "calorie": "497.33",
        "protein": "16.03",
        "carbo": "78.93",
        "fat": "13.05",
        "portion": "231.19999997318"
        ],
        [
        "name": "Golden Turmeric Chickpea Chicken Soup",
        "calorie": "729.31",
        "protein": "42.04",
        "carbo": "64.01",
        "fat": "33.9",
        "portion": "626.21878916405"
        ],
        [
        "name": "Watermelon Juice",
        "calorie": "20.92",
        "protein": "0.35",
        "carbo": "4.67",
        "fat": "0.09",
        "portion": "55.25"
        ],
        [
        "name": "Almond-Cherry Cereal",
        "calorie": "1180.35",
        "protein": "22.1",
        "carbo": "243.94",
        "fat": "12.91",
        "portion": "1352.1666666667"
        ],
        [
        "name": "Veg Lasagna",
        "calorie": "1349.96",
        "protein": "101.94",
        "carbo": "82.86",
        "fat": "67.86",
        "portion": "988.58062968456"
        ],
        [
        "name": "Easy Tomato And Potato Curry",
        "calorie": "110.06",
        "protein": "5.03",
        "carbo": "20.31",
        "fat": "0.97",
        "portion": "421.85288015588"
        ],
        [
        "name": "Steak & Veggies",
        "calorie": "46.01",
        "protein": "3.29",
        "carbo": "3.07",
        "fat": "2.29",
        "portion": "36.125"
        ],
        [
        "name": "Raspberry Napoleon",
        "calorie": "850.11",
        "protein": "27.18",
        "carbo": "69.99",
        "fat": "51.27",
        "portion": "345.98223018646"
        ],
        [
        "name": "Salisbury Steak",
        "calorie": "423.57",
        "protein": "39.36",
        "carbo": "22.23",
        "fat": "19.69",
        "portion": "297.89713900931"
        ],
        [
        "name": "Carrot Soufflé",
        "calorie": "186.43",
        "protein": "3.95",
        "carbo": "31.43",
        "fat": "4.99",
        "portion": "162.68072928192"
        ],
        [
        "name": "Shrimp Salad",
        "calorie": "276.64",
        "protein": "20.98",
        "carbo": "1.83",
        "fat": "20.6",
        "portion": "190.38829619048"
        ],
        [
        "name": "Avocado Dip",
        "calorie": "541.09",
        "protein": "6.58",
        "carbo": "29.35",
        "fat": "44.15",
        "portion": "359.7500011525"
        ],
        [
        "name": "Raspberry Pastries",
        "calorie": "8.72",
        "protein": "0",
        "carbo": "2.18",
        "fat": "0",
        "portion": "3.1800000508626"
        ],
        [
        "name": "Basic Nomato Sauce (Tomato Free Tomato Sauce)",
        "calorie": "245.14",
        "protein": "7.03",
        "carbo": "51.12",
        "fat": "1.39",
        "portion": "676.8"
        ],
        [
        "name": "Pepparkakor (Gingerbread Cookies) - Vete- Katten Bakery, Sweden",
        "calorie": "104.37",
        "protein": "1.01",
        "carbo": "18.07",
        "fat": "3.12",
        "portion": "25.838888888889"
        ],
        [
        "name": "Almond Cow",
        "calorie": "618.5",
        "protein": "10.45",
        "carbo": "90.19",
        "fat": "23.99",
        "portion": "193.5728540625"
        ],
        [
        "name": "Carrot Lox",
        "calorie": "690.54",
        "protein": "18.24",
        "carbo": "103.08",
        "fat": "22.8",
        "portion": "1269.8"
        ],
        [
        "name": "Waffle Day",
        "calorie": "829.55",
        "protein": "23.6",
        "carbo": "130.2",
        "fat": "23.81",
        "portion": "267.92282325479"
        ],
        [
        "name": "Veg Pakoda Snack",
        "calorie": "11.36",
        "protein": "0.04",
        "carbo": "0.26",
        "fat": "1.13",
        "portion": "254.28055558354"
        ],
        [
        "name": "Carrot Milkshake",
        "calorie": "227.8",
        "protein": "8.92",
        "carbo": "18.85",
        "fat": "12.97",
        "portion": "519.16238087416"
        ],
        [
        "name": "Chicken Potato Pie - Shepherd’S Pie",
        "calorie": "169.24",
        "protein": "7.08",
        "carbo": "14.85",
        "fat": "9.06",
        "portion": "105.11065705128"
        ],
        [
        "name": "Fish Tacos",
        "calorie": "568.24",
        "protein": "26.48",
        "carbo": "81.53",
        "fat": "15.13",
        "portion": "283.51216459398"
        ],
        [
        "name": "Ramen Burger",
        "calorie": "384.43",
        "protein": "31.07",
        "carbo": "1.13",
        "fat": "28.41",
        "portion": "155.59809418023"
        ],
        [
        "name": "Spiced Chicken And Chickpea Stew",
        "calorie": "807.85",
        "protein": "61.23",
        "carbo": "107.19",
        "fat": "14.91",
        "portion": "483.43958569207"
        ],
        [
        "name": "Grilled Fish",
        "calorie": "163.04",
        "protein": "28.79",
        "carbo": "2.53",
        "fat": "4.2",
        "portion": "198.97213875"
        ],
        [
        "name": "Mushroom, Mushroom, Tuna Noodle Casserole!",
        "calorie": "579.97",
        "protein": "60.59",
        "carbo": "24.68",
        "fat": "26.54",
        "portion": "479.54532706738"
        ],
        [
        "name": "Vegie Brekkie",
        "calorie": "347.61",
        "protein": "14.24",
        "carbo": "17.67",
        "fat": "24.44",
        "portion": "217.57916666667"
        ],
        [
        "name": "Methi Chicken",
        "calorie": "117.41",
        "protein": "4.73",
        "carbo": "13.5",
        "fat": "4.94",
        "portion": "107.07500020415"
        ],
        [
        "name": "Sweet And Spicy Chinese Five Spice Roasted Almonds",
        "calorie": "936.62",
        "protein": "30.27",
        "carbo": "33.02",
        "fat": "75.94",
        "portion": "152.25416666667"
        ],
        [
        "name": "Mashed Rutabagas",
        "calorie": "130.67",
        "protein": "12.01",
        "carbo": "4.2",
        "fat": "7.31",
        "portion": "100.91662433279"
        ],
        [
        "name": "Strawberry Shakes",
        "calorie": "41.83",
        "protein": "1.04",
        "carbo": "5.11",
        "fat": "1.91",
        "portion": "46.625"
        ],
        [
        "name": "Spicy Wontons",
        "calorie": "48.49",
        "protein": "2.5",
        "carbo": "7.78",
        "fat": "0.82",
        "portion": "26.046752578791"
        ],
        [
        "name": "Waffle",
        "calorie": "374.13",
        "protein": "10.2",
        "carbo": "57.2",
        "fat": "11.61",
        "portion": "117.18333517733"
        ],
        [
        "name": "Shrimp",
        "calorie": "128.11",
        "protein": "22.84",
        "carbo": "0.23",
        "fat": "3.98",
        "portion": "118.56476008866"
        ],
        [
        "name": "Avocado Cups",
        "calorie": "274.48",
        "protein": "2.79",
        "carbo": "10.21",
        "fat": "24.72",
        "portion": "192.75378699546"
        ],
        [
        "name": "Tortilla Pie",
        "calorie": "136.11",
        "protein": "5.02",
        "carbo": "9.89",
        "fat": "8.5",
        "portion": "99.070475705896"
        ],
        [
        "name": "Water-Proofed Bread",
        "calorie": "706.96",
        "protein": "20.6",
        "carbo": "91.17",
        "fat": "28.88",
        "portion": "244.37500023842"
        ],
        [
        "name": "Steak Soup",
        "calorie": "209.68",
        "protein": "13.89",
        "carbo": "19.36",
        "fat": "8.52",
        "portion": "218.42123508333"
        ],
        [
        "name": "Spicy Sweet Roasted Sweet Potatoes",
        "calorie": "69.12",
        "protein": "0.7",
        "carbo": "5.24",
        "fat": "5.04",
        "portion": "27.598611418443"
        ],
        [
        "name": "Duck Breast Scaloppine",
        "calorie": "822.76",
        "protein": "21.55",
        "carbo": "162.25",
        "fat": "9.73",
        "portion": "298.25"
        ],
        [
        "name": "Bran Muffins A La Brian",
        "calorie": "237.52",
        "protein": "3.46",
        "carbo": "33.26",
        "fat": "10.07",
        "portion": "73.449652931444"
        ],
        [
        "name": "Raspberry Soufflé",
        "calorie": "211.16",
        "protein": "2.87",
        "carbo": "40.11",
        "fat": "4.36",
        "portion": "110.9453125"
        ],
        [
        "name": "Salted Caramel Cupcakes",
        "calorie": "126.04",
        "protein": "0.75",
        "carbo": "10.44",
        "fat": "9.03",
        "portion": "43.604560136795"
        ],
        [
        "name": "Salted Hot Chocolate",
        "calorie": "692.36",
        "protein": "13.69",
        "carbo": "114.29",
        "fat": "20.05",
        "portion": "204.26650770833"
        ],
        [
        "name": "Low Calorie And Delish, Coq Au Vin",
        "calorie": "342",
        "protein": "23.87",
        "carbo": "22.06",
        "fat": "17.59",
        "portion": "455.23885432631"
        ],
        [
        "name": "Oven Fries",
        "calorie": "51.66",
        "protein": "0.29",
        "carbo": "2.5",
        "fat": "4.5",
        "portion": "19.730769230769"
        ],
        [
        "name": "Egg Salad",
        "calorie": "203.73",
        "protein": "0.43",
        "carbo": "1.3",
        "fat": "21.87",
        "portion": "44.981042999774"
        ],
        [
        "name": "Mad Cow Hamburger",
        "calorie": "319.01",
        "protein": "26.99",
        "carbo": "16.48",
        "fat": "16.13",
        "portion": "295.84148458894"
        ],
        [
        "name": "Milk Tarts",
        "calorie": "1037.01",
        "protein": "21.04",
        "carbo": "144.32",
        "fat": "41.73",
        "portion": "497.85566776991"
        ],
        [
        "name": "Sago Dumpling (Veg)",
        "calorie": "40.21",
        "protein": "0.82",
        "carbo": "8.99",
        "fat": "0.11",
        "portion": "305.61111116409"
        ],
        [
        "name": "Syrian Green Beans With Cilantro",
        "calorie": "132.29",
        "protein": "0.53",
        "carbo": "2.03",
        "fat": "13.56",
        "portion": "41.75"
        ],
        [
        "name": "Mushroom Saute",
        "calorie": "173.99",
        "protein": "1.92",
        "carbo": "2.59",
        "fat": "17.33",
        "portion": "82.109375288124"
        ],
        [
        "name": "Raspberry Thumbprints",
        "calorie": "915.03",
        "protein": "8.91",
        "carbo": "119.18",
        "fat": "44.74",
        "portion": "205.39633345604"
        ],
        [
        "name": "Rosé Sangria With Pineapple And Guava",
        "calorie": "30.66",
        "protein": "0.44",
        "carbo": "6.15",
        "fat": "0.48",
        "portion": "50.25"
        ],
        [
        "name": "Caprese Burger",
        "calorie": "1083.53",
        "protein": "54.02",
        "carbo": "56.35",
        "fat": "71.34",
        "portion": "384.822139211"
        ],
        [
        "name": "Beet Juice",
        "calorie": "41.82",
        "protein": "1.31",
        "carbo": "8.71",
        "fat": "0.19",
        "portion": "132.48166229948"
        ],
        [
        "name": "Tea Sandwiches",
        "calorie": "416.02",
        "protein": "7.99",
        "carbo": "1.37",
        "fat": "42.06",
        "portion": "132.02071485668"
        ],
        [
        "name": "Mashed Cauliflower",
        "calorie": "124.54",
        "protein": "4.79",
        "carbo": "15.63",
        "fat": "4.76",
        "portion": "224.425"
        ],
        [
        "name": "Sushi Rolls",
        "calorie": "160.07",
        "protein": "5",
        "carbo": "30.79",
        "fat": "1.88",
        "portion": "163.85833425533"
        ],
        [
        "name": "Vanilla Cream",
        "calorie": "68.88",
        "protein": "3.14",
        "carbo": "10.48",
        "fat": "1.6",
        "portion": "66.5625"
        ],
        [
        "name": "Meat Pie",
        "calorie": "1198.13",
        "protein": "40.94",
        "carbo": "73.8",
        "fat": "82.13",
        "portion": "520.05301252955"
        ],
        [
        "name": "Coffee-Toffee Cake With Caramel Frosting",
        "calorie": "255.37",
        "protein": "3.85",
        "carbo": "11.89",
        "fat": "21.38",
        "portion": "156.47916698456"
        ],
        [
        "name": "Salted Mocha Cookies",
        "calorie": "286.13",
        "protein": "3.34",
        "carbo": "38.25",
        "fat": "13.31",
        "portion": "65.324920520833"
        ],
        [
        "name": "Salted Caramels",
        "calorie": "400.15",
        "protein": "3.03",
        "carbo": "39.57",
        "fat": "25.53",
        "portion": "167.83854166667"
        ],
        [
        "name": "Cheery Cherry Cookies",
        "calorie": "122.54",
        "protein": "1.42",
        "carbo": "12.89",
        "fat": "7.26",
        "portion": "29.590740791963"
        ],
        [
        "name": "Cheese Burgers. \"The Science That Produces Burger Perfectio",
        "calorie": "555.46",
        "protein": "38.49",
        "carbo": "0.14",
        "fat": "44.55",
        "portion": "230.18785258866"
        ],
        [
        "name": "Raspberry Lemonade",
        "calorie": "254.72",
        "protein": "1.7",
        "carbo": "59.62",
        "fat": "1.05",
        "portion": "186"
        ],
        [
        "name": "Strawberry Syrup",
        "calorie": "129.61",
        "protein": "0.7",
        "carbo": "31.16",
        "fat": "0.24",
        "portion": "109.28333333333"
        ],
        [
        "name": "Belgium Frites(French Fries)",
        "calorie": "57.44",
        "protein": "0.65",
        "carbo": "3.15",
        "fat": "4.69",
        "portion": "30.355555862888"
        ],
        [
        "name": "Chocolaty Chocolate Chip Whole Wheat Muffins",
        "calorie": "325.21",
        "protein": "5.55",
        "carbo": "46.53",
        "fat": "12.99",
        "portion": "78.605555709222"
        ],
        [
        "name": "Quinoa Breakfast Cereal",
        "calorie": "231.73",
        "protein": "9.5",
        "carbo": "32.41",
        "fat": "7.12",
        "portion": "100.79166666667"
        ],
        [
        "name": "Bow-Wow Brownie Frosting",
        "calorie": "373.74",
        "protein": "53.4",
        "carbo": "32.38",
        "fat": "3.4",
        "portion": "351.52761083333"
        ],
        [
        "name": "Coffee Coffee Cake",
        "calorie": "582.76",
        "protein": "11.84",
        "carbo": "69.27",
        "fat": "28.7",
        "portion": "177.88680570922"
        ],
        [
        "name": "Pork Medallions",
        "calorie": "72.13",
        "protein": "3.17",
        "carbo": "0",
        "fat": "6.61",
        "portion": "22.2"
        ],
        [
        "name": "Pralines & Cream Dream",
        "calorie": "1821.08",
        "protein": "22.69",
        "carbo": "177.66",
        "fat": "113.3",
        "portion": "666.79861111111"
        ],
        [
        "name": "Chocolate Milkshake",
        "calorie": "1623.26",
        "protein": "27.15",
        "carbo": "160.81",
        "fat": "96.82",
        "portion": "329.52500152588"
        ],
        [
        "name": "Almond Tea",
        "calorie": "60.09",
        "protein": "2.1",
        "carbo": "12.31",
        "fat": "0.27",
        "portion": "124.17"
        ],
        [
        "name": "Egg Thokku - South Indian Egg",
        "calorie": "201.47",
        "protein": "7.1",
        "carbo": "17.14",
        "fat": "11.61",
        "portion": "270.82904419303"
        ],
        [
        "name": "Tomato Scalloped Potatoes",
        "calorie": "194.08",
        "protein": "10.02",
        "carbo": "18.97",
        "fat": "8.68",
        "portion": "201.53090921875"
        ],
        [
        "name": "Cream-Cheesy Macaroni And Cheese",
        "calorie": "659.05",
        "protein": "21.83",
        "carbo": "76.56",
        "fat": "29.5",
        "portion": "182.24320208333"
        ],
        [
        "name": "Spicy Peaches",
        "calorie": "1106.94",
        "protein": "3.36",
        "carbo": "261.33",
        "fat": "5.35",
        "portion": "969.39809417725"
        ],
        [
        "name": "Summer Water",
        "calorie": "62.9",
        "protein": "1.05",
        "carbo": "14.37",
        "fat": "0.13",
        "portion": "381.87468853719"
        ],
        [
        "name": "Egg Nests",
        "calorie": "393.36",
        "protein": "18.24",
        "carbo": "33.55",
        "fat": "20.69",
        "portion": "367.66223266187"
        ],
        [
        "name": "Mango Milkshake",
        "calorie": "77.68",
        "protein": "0.92",
        "carbo": "17.54",
        "fat": "0.43",
        "portion": "446.09999998411"
        ],
        [
        "name": "Mashed Taters",
        "calorie": "38.07",
        "protein": "1.35",
        "carbo": "5.75",
        "fat": "1.08",
        "portion": "52.28"
        ],
        [
        "name": "Homemade Yogurt",
        "calorie": "568.26",
        "protein": "20.82",
        "carbo": "73.83",
        "fat": "21.07",
        "portion": "195.63541666667"
        ],
        [
        "name": "Lacto-Fermented Hummus",
        "calorie": "460.45",
        "protein": "22.62",
        "carbo": "66.72",
        "fat": "11.45",
        "portion": "129.55000019073"
        ],
        [
        "name": "Vanilla Souffle",
        "calorie": "218.32",
        "protein": "8.26",
        "carbo": "20",
        "fat": "11.7",
        "portion": "146.22916666667"
        ],
        [
        "name": "Strawberry Sushi",
        "calorie": "55.07",
        "protein": "0.96",
        "carbo": "12.22",
        "fat": "0.26",
        "portion": "85.85"
        ],
        [
        "name": "Fermented Carrot Pickles",
        "calorie": "45.42",
        "protein": "0.91",
        "carbo": "9.91",
        "fat": "0.24",
        "portion": "106.65099784375"
        ],
        [
        "name": "Smothered Salmon",
        "calorie": "440.62",
        "protein": "16.64",
        "carbo": "70.14",
        "fat": "10.39",
        "portion": "277.23380421875"
        ],
        [
        "name": "Tea Cakes",
        "calorie": "109.93",
        "protein": "2.12",
        "carbo": "12.61",
        "fat": "5.67",
        "portion": "36.821296347518"
        ],
        [
        "name": "Sushi Sandwiches",
        "calorie": "272.61",
        "protein": "40.64",
        "carbo": "11.14",
        "fat": "7.28",
        "portion": "393.51309680939"
        ],
        [
        "name": "No-Bake Hot Cocoa Cake",
        "calorie": "1298.43",
        "protein": "18.48",
        "carbo": "198.53",
        "fat": "47.82",
        "portion": "311.11249401042"
        ],
        [
        "name": "Chocolatier Dark Chocolate Orange Fondue",
        "calorie": "78.61",
        "protein": "0.99",
        "carbo": "6.58",
        "fat": "5.37",
        "portion": "16.389814226506"
        ],
        [
        "name": "Cereal Treats Ii",
        "calorie": "114.74",
        "protein": "1.06",
        "carbo": "14.26",
        "fat": "5.94",
        "portion": "23.59375"
        ],
        [
        "name": "Tomato Salad (Arabic Salad)",
        "calorie": "238.68",
        "protein": "2.68",
        "carbo": "25.73",
        "fat": "13.89",
        "portion": "415.87702372396"
        ],
        [
        "name": "Princess Pie (Coconut Cream Pie)",
        "calorie": "1402.75",
        "protein": "13.56",
        "carbo": "104",
        "fat": "103.61",
        "portion": "254.5"
        ],
        [
        "name": "Rum And Coke Cake",
        "calorie": "351.79",
        "protein": "6.7",
        "carbo": "61.3",
        "fat": "8.87",
        "portion": "161.0893752766"
        ],
        [
        "name": "Healthy Chicken Chickpea Chopped Salad",
        "calorie": "591.64",
        "protein": "28.85",
        "carbo": "66.46",
        "fat": "23.38",
        "portion": "301.37683141232"
        ],
        [
        "name": "Raspberry Scones",
        "calorie": "248.32",
        "protein": "5.23",
        "carbo": "35.24",
        "fat": "9.6",
        "portion": "73.825000230499"
        ],
        [
        "name": "Ranch Burger",
        "calorie": "511.91",
        "protein": "27.02",
        "carbo": "50.98",
        "fat": "22.21",
        "portion": "275.42063329197"
        ],
        [
        "name": "Tea Biscuits",
        "calorie": "496.64",
        "protein": "10.61",
        "carbo": "76.3",
        "fat": "16.56",
        "portion": "131.46527839244"
        ],
        [
        "name": "Spicy Meatballs",
        "calorie": "263.13",
        "protein": "21.29",
        "carbo": "14.89",
        "fat": "13.15",
        "portion": "147.45666473183"
        ],
        [
        "name": "Green Juice",
        "calorie": "456.49",
        "protein": "6.76",
        "carbo": "106.78",
        "fat": "0.26",
        "portion": "268.02245508982"
        ],
        [
        "name": "Pork Medallions With Cherry Port Sauce",
        "calorie": "231.17",
        "protein": "11.01",
        "carbo": "10.73",
        "fat": "16.02",
        "portion": "98.921875"
        ],
        [
        "name": "Easy Probiotic Fermented Carrots",
        "calorie": "77.62",
        "protein": "1.68",
        "carbo": "16.79",
        "fat": "0.42",
        "portion": "292.5671389699"
        ],
        [
        "name": "Pumpkin Coffee Cake With Toffee Streusal",
        "calorie": "1070.69",
        "protein": "13.03",
        "carbo": "158.15",
        "fat": "42.89",
        "portion": "324.12090702355"
        ],
        [
        "name": "Oven Fries",
        "calorie": "208.22",
        "protein": "3.71",
        "carbo": "42.82",
        "fat": "2.46",
        "portion": "194.07173463051"
        ],
        [
        "name": "Taco Meat",
        "calorie": "245.4",
        "protein": "22.97",
        "carbo": "4.98",
        "fat": "14.84",
        "portion": "168.85642629433"
        ],
        [
        "name": "Basil Almond Crusted Salmon",
        "calorie": "643.23",
        "protein": "48.18",
        "carbo": "5.16",
        "fat": "47.76",
        "portion": "246.21666693687"
        ],
        [
        "name": "Strawberry Sorbet",
        "calorie": "1.02",
        "protein": "0",
        "carbo": "0.25",
        "fat": "0",
        "portion": "0.83180000829391"
        ],
        [
        "name": "Pumpkin-Lemon Cream Cheese Chess Pie",
        "calorie": "802.41",
        "protein": "9.65",
        "carbo": "86.74",
        "fat": "46.32",
        "portion": "224.30472334321"
        ],
        [
        "name": "Pie Topping (For Store Bought Pies)",
        "calorie": "90.48",
        "protein": "0.73",
        "carbo": "18.43",
        "fat": "1.54",
        "portion": "22.0609375"
        ],
        [
        "name": "Milk Bread",
        "calorie": "752.56",
        "protein": "12.66",
        "carbo": "136.02",
        "fat": "17.54",
        "portion": "205.42487520216"
        ],
        [
        "name": "\"Tarte\" Au Chocolat - Chocolate Cake",
        "calorie": "495.57",
        "protein": "11.11",
        "carbo": "39.43",
        "fat": "32.6",
        "portion": "147.55"
        ],
        [
        "name": "Coffee-Toffee Amish Friendship Bread",
        "calorie": "357.14",
        "protein": "3.93",
        "carbo": "39.32",
        "fat": "20.46",
        "portion": "80.12513512373"
        ],
        [
        "name": "Easy Ramen",
        "calorie": "535.74",
        "protein": "18.56",
        "carbo": "61.62",
        "fat": "23.89",
        "portion": "608.21850367635"
        ],
        [
        "name": "Spicy Almonds",
        "calorie": "256.86",
        "protein": "6.1",
        "carbo": "9.08",
        "fat": "21.79",
        "portion": "43.5171875"
        ],
        [
        "name": "Chocolatey Chocolate Cake",
        "calorie": "1961.69",
        "protein": "24.74",
        "carbo": "279.16",
        "fat": "82.9",
        "portion": "579.075000922"
        ],
        [
        "name": "Watermelon Juice",
        "calorie": "63.49",
        "protein": "1.53",
        "carbo": "13.67",
        "fat": "0.3",
        "portion": "176.75"
        ],
        [
        "name": "Pizza ( Naan Bread Pizza )",
        "calorie": "469.67",
        "protein": "31.29",
        "carbo": "37.76",
        "fat": "21.5",
        "portion": "264.5497615625"
        ],
        [
        "name": "Mashed Potatoes",
        "calorie": "68.85",
        "protein": "0.4",
        "carbo": "1.58",
        "fat": "6.77",
        "portion": "21.13333333532"
        ],
        [
        "name": "Sweet Potato And Hazelnut Mashed Potatoes",
        "calorie": "853.85",
        "protein": "9.91",
        "carbo": "103.38",
        "fat": "44.52",
        "portion": "230.09618263473"
        ],
        [
        "name": "Mango Milkshake",
        "calorie": "510.63",
        "protein": "6.24",
        "carbo": "114.62",
        "fat": "3.02",
        "portion": "771"
        ],
        [
        "name": "Sweet Tea",
        "calorie": "214.53",
        "protein": "1.98",
        "carbo": "38.75",
        "fat": "5.74",
        "portion": "605.676473"
        ],
        [
        "name": "Fries",
        "calorie": "56.24",
        "protein": "0.65",
        "carbo": "3.15",
        "fat": "4.56",
        "portion": "30.93333425533"
        ],
        [
        "name": "Chocolate Chocolate Cake",
        "calorie": "754.38",
        "protein": "33.69",
        "carbo": "47.22",
        "fat": "47.86",
        "portion": "314.92500003179"
        ],
        [
        "name": "Mashed Potatoes",
        "calorie": "98.67",
        "protein": "0.75",
        "carbo": "2.01",
        "fat": "9.73",
        "portion": "34.897798742138"
        ],
        [
        "name": "Vanilla Glazed Vanilla Donuts",
        "calorie": "346.38",
        "protein": "5.72",
        "carbo": "70.17",
        "fat": "4.76",
        "portion": "117.46354166667"
        ],
        [
        "name": "Avocado Dip",
        "calorie": "182.98",
        "protein": "3.73",
        "carbo": "6.5",
        "fat": "15.78",
        "portion": "103.33337729167"
        ],
        [
        "name": "Vietnamese Milkshake",
        "calorie": "762.59",
        "protein": "17.72",
        "carbo": "133.63",
        "fat": "17.46",
        "portion": "311.55"
        ],
        [
        "name": "Supercharged Burger",
        "calorie": "718.33",
        "protein": "49.96",
        "carbo": "25.8",
        "fat": "46.14",
        "portion": "791.23299487845"
        ],
        [
        "name": "Cheesy Cheesy Cheesy \" Macaroni And Cheese\"",
        "calorie": "786.89",
        "protein": "31.58",
        "carbo": "98.53",
        "fat": "29.61",
        "portion": "257.54219444575"
        ],
        [
        "name": "Chicken Pot Pie Hand Pies",
        "calorie": "313.9",
        "protein": "8.28",
        "carbo": "21.22",
        "fat": "21.76",
        "portion": "128.06971520434"
        ],
        [
        "name": "Tomato Juice",
        "calorie": "101.29",
        "protein": "6.03",
        "carbo": "17.04",
        "fat": "1",
        "portion": "532.75"
        ],
        [
        "name": "Cracked Wheat Cereal",
        "calorie": "152.79",
        "protein": "4.96",
        "carbo": "9.47",
        "fat": "10.56",
        "portion": "83.083333794332"
        ],
        [
        "name": "Avocado Salsa",
        "calorie": "173.32",
        "protein": "3.39",
        "carbo": "22.97",
        "fat": "7.54",
        "portion": "269.41281121969"
        ],
        [
        "name": "Ramen Coleslaw",
        "calorie": "124.57",
        "protein": "2.28",
        "carbo": "16.67",
        "fat": "5.42",
        "portion": "134.29999987284"
        ],
        [
        "name": "Pizza Hut Dessert Pizza",
        "calorie": "863.51",
        "protein": "10.6",
        "carbo": "144.15",
        "fat": "27.17",
        "portion": "213.4450007376"
        ],
        [
        "name": "Your Choice Yogurt Pancakes",
        "calorie": "506.61",
        "protein": "14.59",
        "carbo": "81.12",
        "fat": "13.75",
        "portion": "299.56666758866"
        ],
        [
        "name": "Cherry Berry Pie",
        "calorie": "971.67",
        "protein": "12.03",
        "carbo": "116.19",
        "fat": "50.97",
        "portion": "434.09956754744"
        ],
        [
        "name": "Chicken Doria",
        "calorie": "162.82",
        "protein": "6.23",
        "carbo": "29.99",
        "fat": "1.99",
        "portion": "43.53125"
        ],
        [
        "name": "Spicy Guacamole",
        "calorie": "108.38",
        "protein": "1.29",
        "carbo": "5.94",
        "fat": "8.83",
        "portion": "71.055"
        ],
        [
        "name": "Chewy Chocolate-Cherry Bars",
        "calorie": "150.77",
        "protein": "2.43",
        "carbo": "16.26",
        "fat": "8.44",
        "portion": "36.045893354518"
        ],
        [
        "name": "Suriani Home-Style Chicken Curry (‘Ishtu’)",
        "calorie": "1522.08",
        "protein": "63.88",
        "carbo": "120.39",
        "fat": "87.22",
        "portion": "922.72488236427"
        ],
        [
        "name": "Nawabi Veg Biryani",
        "calorie": "585.59",
        "protein": "5.73",
        "carbo": "121.18",
        "fat": "8.66",
        "portion": "541.18787246943"
        ],
        [
        "name": "Potato Salad With Arugula And Tomato",
        "calorie": "231.42",
        "protein": "6.41",
        "carbo": "30.54",
        "fat": "9.29",
        "portion": "339.58142583333"
        ],
        [
        "name": "Carrot Souffle",
        "calorie": "310.75",
        "protein": "6.19",
        "carbo": "30.48",
        "fat": "18.23",
        "portion": "227.22031472222"
        ],
        [
        "name": "Potato,Eggplant,Tomato And Parsley Frittata",
        "calorie": "208.9",
        "protein": "12.38",
        "carbo": "11.47",
        "fat": "12.61",
        "portion": "243.78990467191"
        ],
        [
        "name": "Veg-Tastic Smoothie",
        "calorie": "124.81",
        "protein": "2.12",
        "carbo": "25.31",
        "fat": "1.67",
        "portion": "263.40104166667"
        ],
        [
        "name": "Egg Peeling For Egg Salad",
        "calorie": "71.66",
        "protein": "6.52",
        "carbo": "0.65",
        "fat": "4.77",
        "portion": "59.333333333333"
        ],
        [
        "name": "Carrot Pie",
        "calorie": "192.24",
        "protein": "2.56",
        "carbo": "35.59",
        "fat": "4.41",
        "portion": "130.00374640524"
        ],
        [
        "name": "Spicy Popcorn",
        "calorie": "88.99",
        "protein": "0.81",
        "carbo": "5.2",
        "fat": "7.22",
        "portion": "27.058333333333"
        ],
        [
        "name": "Fish Stew",
        "calorie": "285.03",
        "protein": "41.67",
        "carbo": "13.67",
        "fat": "7.08",
        "portion": "449.422958125"
        ],
        [
        "name": "Coffee Doughnuts With Coffee Glaze",
        "calorie": "1544.49",
        "protein": "2.92",
        "carbo": "41.37",
        "fat": "151.93",
        "portion": "209.40239437918"
        ],
        [
        "name": "Frosted Cereal Bars",
        "calorie": "1140.12",
        "protein": "10.76",
        "carbo": "156.06",
        "fat": "52.53",
        "portion": "235.36232164171"
        ],
        [
        "name": "Flaxseed Hot Cereal",
        "calorie": "196.47",
        "protein": "7",
        "carbo": "24.55",
        "fat": "7.81",
        "portion": "162.25943811238"
        ],
        [
        "name": "Salted Caramel Puddings",
        "calorie": "1121.61",
        "protein": "36.3",
        "carbo": "56.07",
        "fat": "83.57",
        "portion": "390.27185471853"
        ],
        [
        "name": "Mushroom Gravy",
        "calorie": "84.64",
        "protein": "2.61",
        "carbo": "5.68",
        "fat": "5.72",
        "portion": "118.37578124925"
        ],
        [
        "name": "Pine-Apple Pie",
        "calorie": "1101.77",
        "protein": "14.18",
        "carbo": "146.61",
        "fat": "50.96",
        "portion": "382.0787457718"
        ],
        [
        "name": "Tricked-Out Ramen",
        "calorie": "864.69",
        "protein": "54.26",
        "carbo": "64.8",
        "fat": "43.16",
        "portion": "569.02047348022"
        ],
        [
        "name": "Shrimp Scampi",
        "calorie": "153.9",
        "protein": "26.28",
        "carbo": "3.2",
        "fat": "4",
        "portion": "231.44583385196"
        ],
        [
        "name": "Greek Chicken Kebab",
        "calorie": "425.72",
        "protein": "34.71",
        "carbo": "12.15",
        "fat": "26.48",
        "portion": "339.36285215616"
        ],
        [
        "name": "Steak Diane",
        "calorie": "368.19",
        "protein": "39.25",
        "carbo": "16.72",
        "fat": "16.04",
        "portion": "290.59583540783"
        ],
        [
        "name": "Cereal Milk Ice Cream",
        "calorie": "127.28",
        "protein": "11.84",
        "carbo": "9.24",
        "fat": "4.77",
        "portion": "28.666666666667"
        ],
        [
        "name": "Fermented Green Onion And Carrots",
        "calorie": "10.07",
        "protein": "0.4",
        "carbo": "2.03",
        "fat": "0.04",
        "portion": "34.100002765989"
        ],
        [
        "name": "No Bake Carrot Cake",
        "calorie": "913.86",
        "protein": "12.73",
        "carbo": "86.14",
        "fat": "57.6",
        "portion": "195.62031263113"
        ],
        [
        "name": "Cashew Milk",
        "calorie": "337.02",
        "protein": "10.69",
        "carbo": "17.56",
        "fat": "24.89",
        "portion": "70.770312439224"
        ],
        [
        "name": "Fruit Muffins",
        "calorie": "200.03",
        "protein": "7.45",
        "carbo": "22.74",
        "fat": "8.8",
        "portion": "65.348611264777"
        ],
        [
        "name": "Meat Sauce",
        "calorie": "314.57",
        "protein": "30.36",
        "carbo": "24.19",
        "fat": "10.71",
        "portion": "460.17942050844"
        ],
        [
        "name": "Sun Tea",
        "calorie": "0",
        "protein": "0",
        "carbo": "0",
        "fat": "0",
        "portion": "476.176473"
        ],
        [
        "name": "Turmeric Tea",
        "calorie": "1141.58",
        "protein": "9",
        "carbo": "36",
        "fat": "106.84",
        "portion": "347.04218698665"
        ],
        [
        "name": "Potato, Zucchini, And Tomato Gratin",
        "calorie": "278.33",
        "protein": "8.17",
        "carbo": "32.17",
        "fat": "13",
        "portion": "320.1478540625"
        ],
        [
        "name": "Super-Cheesy Mac And Cheese",
        "calorie": "1318.07",
        "protein": "71.84",
        "carbo": "39.06",
        "fat": "97.16",
        "portion": "523.24221501499"
        ],
        [
        "name": "Toffee-Coffee-Chocolate Chip Blondie Bars",
        "calorie": "1137.19",
        "protein": "7.73",
        "carbo": "147.96",
        "fat": "57.16",
        "portion": "243.1033103466"
        ],
        [
        "name": "Lunch Box Ramen",
        "calorie": "96.12",
        "protein": "9.32",
        "carbo": "4.9",
        "fat": "4.36",
        "portion": "548.39999389648"
        ],
        [
        "name": "Sausage Gravy",
        "calorie": "1549.68",
        "protein": "45.64",
        "carbo": "209.64",
        "fat": "58.73",
        "portion": "489.41476008866"
        ],
        [
        "name": "Tomato Pie",
        "calorie": "516.1",
        "protein": "12.87",
        "carbo": "15.34",
        "fat": "44.81",
        "portion": "191.17500000075"
        ],
        [
        "name": "Tomato Tonnato",
        "calorie": "296.36",
        "protein": "6.17",
        "carbo": "22.69",
        "fat": "20.1",
        "portion": "198.95961001721"
        ],
        [
        "name": "Roast Chicken Breast & Brussels Sprouts",
        "calorie": "221.09",
        "protein": "13.64",
        "carbo": "12.71",
        "fat": "12.85",
        "portion": "213.86756221205"
        ],
        [
        "name": "Mushroom Frittata",
        "calorie": "165.26",
        "protein": "15.36",
        "carbo": "1.49",
        "fat": "10.87",
        "portion": "79.623530209064"
        ],
        [
        "name": "Lacto-Fermented Pickled Peppers",
        "calorie": "0",
        "protein": "0",
        "carbo": "0",
        "fat": "0",
        "portion": "982.852946"
        ],
        [
        "name": "Carote Marinate (Marinated Carrots)",
        "calorie": "463.26",
        "protein": "1.35",
        "carbo": "10.97",
        "fat": "46",
        "portion": "165.66393063452"
        ],
        [
        "name": "Salad Roll Salad",
        "calorie": "277",
        "protein": "5.2",
        "carbo": "44.88",
        "fat": "8.52",
        "portion": "196.172960625"
        ],
        [
        "name": "Cherry-Port Glazed Pork Loin Roast",
        "calorie": "79.06",
        "protein": "2.52",
        "carbo": "8.98",
        "fat": "3.67",
        "portion": "26.001349187722"
        ],
        [
        "name": "Smothered Fish (A.K.A. Fish Mornay)",
        "calorie": "498.29",
        "protein": "16.63",
        "carbo": "55.52",
        "fat": "23.3",
        "portion": "194.38666694327"
        ],
        [
        "name": "Mashed Cauliflower",
        "calorie": "156.71",
        "protein": "8.06",
        "carbo": "20.87",
        "fat": "4.55",
        "portion": "424.775"
        ],
        [
        "name": "Easter Eggs - Egg Dye",
        "calorie": "135.09",
        "protein": "1.19",
        "carbo": "1.95",
        "fat": "13.62",
        "portion": "67.999999676019"
        ],
        [
        "name": "Baked Methi Chakali",
        "calorie": "402.52",
        "protein": "9.99",
        "carbo": "67.92",
        "fat": "10.1",
        "portion": "410.82507333905"
        ],
        [
        "name": "Hoisin Barbecued Duck",
        "calorie": "79.89",
        "protein": "2.25",
        "carbo": "12.3",
        "fat": "2.41",
        "portion": "36.666666724291"
        ],
        [
        "name": "Honey Almond Salmon",
        "calorie": "492.39",
        "protein": "33.4",
        "carbo": "24.91",
        "fat": "28.79",
        "portion": "235.1105925"
        ],
        [
        "name": "Vanilla Milk",
        "calorie": "793.26",
        "protein": "17.94",
        "carbo": "135.98",
        "fat": "19.73",
        "portion": "243.62951833333"
        ],
        [
        "name": "Oven Fries",
        "calorie": "190.93",
        "protein": "3.32",
        "carbo": "36.38",
        "fat": "3.57",
        "portion": "174.03047254433"
        ],
        [
        "name": "Duck Carnitas Nachos",
        "calorie": "2370.14",
        "protein": "143.99",
        "carbo": "108.67",
        "fat": "151.06",
        "portion": "1006.9395065308"
        ],
        [
        "name": "Fermented Carrots With Garlic (Recipe)",
        "calorie": "33.2",
        "protein": "1.3",
        "carbo": "6.56",
        "fat": "0.2",
        "portion": "86.76904625"
        ],
        [
        "name": "Chicken Licken Crock Pot",
        "calorie": "188.11",
        "protein": "2.5",
        "carbo": "7.16",
        "fat": "16.61",
        "portion": "115.08333333333"
        ],
        [
        "name": "Vegg-Nog Smoothie",
        "calorie": "975.64",
        "protein": "15.97",
        "carbo": "92.26",
        "fat": "60.3",
        "portion": "434.85037869215"
        ],
        [
        "name": "Brown Cow Float",
        "calorie": "830.36",
        "protein": "10.2",
        "carbo": "86.19",
        "fat": "49.42",
        "portion": "345.49978607981"
        ],
        [
        "name": "Potato, Onion & Tomato Bake",
        "calorie": "266.5",
        "protein": "10.51",
        "carbo": "26.85",
        "fat": "13",
        "portion": "198.5"
        ],
        [
        "name": "Souffle De Tomate (Tomato Souffle)",
        "calorie": "87.21",
        "protein": "5.93",
        "carbo": "7.51",
        "fat": "3.72",
        "portion": "190.5"
        ],
        [
        "name": "Angelina’S Pizza Casareccia (Homestyle Pizza)",
        "calorie": "523.93",
        "protein": "16.96",
        "carbo": "102.61",
        "fat": "5.07",
        "portion": "527.19614068046"
        ],
        [
        "name": "Menchi Katsu Sandwich",
        "calorie": "48.12",
        "protein": "1.51",
        "carbo": "8.04",
        "fat": "1.11",
        "portion": "15"
        ],
        [
        "name": "Cheesy Grilled Cheese",
        "calorie": "485.34",
        "protein": "22.74",
        "carbo": "34.27",
        "fat": "28.59",
        "portion": "150.45833333333"
        ],
        [
        "name": "Steak Seasoning",
        "calorie": "66.16",
        "protein": "3.2",
        "carbo": "8.11",
        "fat": "2.32",
        "portion": "124.40002212792"
        ],
        [
        "name": "Mashed Potatoes",
        "calorie": "116.96",
        "protein": "2.05",
        "carbo": "11.67",
        "fat": "6.9",
        "portion": "58.377083794332"
        ],
        [
        "name": "Spiced Salmon",
        "calorie": "139.19",
        "protein": "5.28",
        "carbo": "12.21",
        "fat": "7.69",
        "portion": "60.497916897166"
        ],
        [
        "name": "Scotch & Water",
        "calorie": "0",
        "protein": "0",
        "carbo": "0",
        "fat": "0",
        "portion": "3.0026853084564"
        ],
        [
        "name": "Fermented Spicy Sweet Potatoes",
        "calorie": "260.27",
        "protein": "4.68",
        "carbo": "60",
        "fat": "0.17",
        "portion": "337.33795821667"
        ],
        [
        "name": "Creme De Menthe Pie",
        "calorie": "256.31",
        "protein": "6.09",
        "carbo": "33.73",
        "fat": "10.78",
        "portion": "85.143164396286"
        ],
        [
        "name": "Fruit Pizza",
        "calorie": "353.37",
        "protein": "4.31",
        "carbo": "32.26",
        "fat": "23.01",
        "portion": "100.17672579233"
        ],
        [
        "name": "Veg And Fruits Healthy Salad",
        "calorie": "30.09",
        "protein": "0.8",
        "carbo": "6.33",
        "fat": "0.17",
        "portion": "105.60000000149"
        ],
        [
        "name": "Egg Rolls",
        "calorie": "179.01",
        "protein": "7.28",
        "carbo": "20.72",
        "fat": "7.45",
        "portion": "97.621427430556"
        ],
        [
        "name": "Avocado Fettuccine",
        "calorie": "306.64",
        "protein": "9.65",
        "carbo": "38.93",
        "fat": "12.48",
        "portion": "168.86571314717"
        ],
        [
        "name": "Hunters Lemon Chicken & Veg Rissoles",
        "calorie": "273.38",
        "protein": "24.63",
        "carbo": "8.75",
        "fat": "15.54",
        "portion": "178.25"
        ],
        [
        "name": "Super-Cheesy Mac And Cheese",
        "calorie": "1318.07",
        "protein": "71.84",
        "carbo": "39.06",
        "fat": "97.16",
        "portion": "523.24221501499"
        ],
        [
        "name": "Creamy Cream Cheese Frosting",
        "calorie": "125.29",
        "protein": "1.37",
        "carbo": "9.25",
        "fat": "9.2",
        "portion": "36.849682083333"
        ],
        [
        "name": "Reshmi Murgh Kebab",
        "calorie": "199.39",
        "protein": "10.92",
        "carbo": "13.02",
        "fat": "11.52",
        "portion": "76.012500084937"
        ],
        [
        "name": "Pizza",
        "calorie": "196.2",
        "protein": "4.51",
        "carbo": "42.89",
        "fat": "0.73",
        "portion": "73.5"
        ],
        [
        "name": "Roasted Carrots With Carrot-Top Pesto And Burrata",
        "calorie": "388.51",
        "protein": "14.14",
        "carbo": "8.72",
        "fat": "33.01",
        "portion": "128.01603083333"
        ],
        [
        "name": "Strawberry Gummies",
        "calorie": "435.13",
        "protein": "1.69",
        "carbo": "105.93",
        "fat": "0.52",
        "portion": "318.975"
        ],
        [
        "name": "Salisbury Steak",
        "calorie": "290.9",
        "protein": "26.56",
        "carbo": "3.75",
        "fat": "18.85",
        "portion": "294.27445743362"
        ],
        [
        "name": "3 Veg Cauliflower Cheese",
        "calorie": "489.31",
        "protein": "17.27",
        "carbo": "58.2",
        "fat": "20.83",
        "portion": "233.86789802159"
        ],
        [
        "name": "Shrimp Stuffed With Shrimp",
        "calorie": "314.29",
        "protein": "23.45",
        "carbo": "16.87",
        "fat": "17",
        "portion": "264.43151375"
        ],
        [
        "name": "Spicy Cauliflower",
        "calorie": "283",
        "protein": "2.16",
        "carbo": "6.25",
        "fat": "27.71",
        "portion": "138.69999998808"
        ],
        [
        "name": "Sausage Ragù",
        "calorie": "493.07",
        "protein": "36.61",
        "carbo": "43.12",
        "fat": "19.35",
        "portion": "359.1970346868"
        ],
        [
        "name": "Creamy Cream Cheese Frosting",
        "calorie": "192.03",
        "protein": "2.11",
        "carbo": "14.86",
        "fat": "13.8",
        "portion": "55.274523125"
        ],
        [
        "name": "Mashed Cauliflower",
        "calorie": "157.89",
        "protein": "17.14",
        "carbo": "11.64",
        "fat": "4.75",
        "portion": "263.5"
        ],
        [
        "name": "Pie Iron Chicken Pot Pie",
        "calorie": "516.23",
        "protein": "21.15",
        "carbo": "78.08",
        "fat": "13.26",
        "portion": "326.87038879842"
        ],
        [
        "name": "Guava Grilled Chicken Chipotle Salad",
        "calorie": "667.94",
        "protein": "43.84",
        "carbo": "15.22",
        "fat": "47.97",
        "portion": "437.26106357574"
        ],
        [
        "name": "Sausage Balls",
        "calorie": "118.36",
        "protein": "5.21",
        "carbo": "1.84",
        "fat": "10.02",
        "portion": "37.099028132557"
        ],
        [
        "name": "Waffle Fries",
        "calorie": "0.31",
        "protein": "0.02",
        "carbo": "0.04",
        "fat": "0.01",
        "portion": "1.111111164093"
        ],
        [
        "name": "Rose Water Pudding",
        "calorie": "223.97",
        "protein": "0.39",
        "carbo": "49.8",
        "fat": "2.58",
        "portion": "59.639460846782"
        ],
        [
        "name": "Mashed Potatoes",
        "calorie": "188.59",
        "protein": "2.52",
        "carbo": "17.1",
        "fat": "12.23",
        "portion": "63.666730769231"
        ],
        [
        "name": "Prawn Masala With Methi Recipe-Jhinga Methi",
        "calorie": "422.34",
        "protein": "5.65",
        "carbo": "48.76",
        "fat": "22.75",
        "portion": "233.63591406494"
        ],
        [
        "name": "Classic Waffle",
        "calorie": "655.53",
        "protein": "15.08",
        "carbo": "94.38",
        "fat": "24.19",
        "portion": "189.2250007376"
        ],
        [
        "name": "Chicken Kebab",
        "calorie": "134.24",
        "protein": "2.16",
        "carbo": "3.67",
        "fat": "12.32",
        "portion": "63.393750230499"
        ],
        [
        "name": "Easy Chicken Pot Pie Hand Pies",
        "calorie": "158.74",
        "protein": "8.15",
        "carbo": "13.16",
        "fat": "8.17",
        "portion": "153.27936053276"
        ],
        [
        "name": "Vegan Burger",
        "calorie": "47.36",
        "protein": "1.66",
        "carbo": "6.21",
        "fat": "1.77",
        "portion": "22.019980107745"
        ],
        [
        "name": "Brown Cow Milk Shake",
        "calorie": "564.16",
        "protein": "10.9",
        "carbo": "91.8",
        "fat": "17.04",
        "portion": "201"
        ],
        [
        "name": "Pork Tenderloin",
        "calorie": "174.57",
        "protein": "9.39",
        "carbo": "20.81",
        "fat": "5.97",
        "portion": "96.29959596875"
        ],
        [
        "name": "Tostada Pizza",
        "calorie": "201.2",
        "protein": "9.27",
        "carbo": "16.62",
        "fat": "10.85",
        "portion": "160.38231813163"
        ],
        [
        "name": "Mashed Potatoes",
        "calorie": "199.89",
        "protein": "3.44",
        "carbo": "14.65",
        "fat": "14.17",
        "portion": "140.40538508866"
        ],
        [
        "name": "Coconut Cinnamon Cereal",
        "calorie": "150.54",
        "protein": "2.79",
        "carbo": "7.75",
        "fat": "12.04",
        "portion": "30.833333333333"
        ],
        [
        "name": "Merry Cherry Swirl Brownies",
        "calorie": "1741.76",
        "protein": "20.84",
        "carbo": "197.78",
        "fat": "96.36",
        "portion": "416.34474492073"
        ],
        [
        "name": "Shrimp Toast",
        "calorie": "54.89",
        "protein": "3.46",
        "carbo": "3.37",
        "fat": "3.06",
        "portion": "21.666666666667"
        ],
        [
        "name": "Grilled Steak",
        "calorie": "0.08",
        "protein": "0",
        "carbo": "0.02",
        "fat": "0",
        "portion": "3.8216912765056"
        ],
        [
        "name": "Quinoa Pizza",
        "calorie": "1285.09",
        "protein": "54.36",
        "carbo": "157.94",
        "fat": "48.43",
        "portion": "497.74853056669"
        ],
        [
        "name": "Coffee Cake Coffee Creamer",
        "calorie": "250.11",
        "protein": "3.41",
        "carbo": "25.06",
        "fat": "15.14",
        "portion": "63.724466463415"
        ],
        [
        "name": "Vegetarian Ramen",
        "calorie": "272.56",
        "protein": "12.26",
        "carbo": "39.08",
        "fat": "7.47",
        "portion": "693.83591806889"
        ],
        [
        "name": "Candied Fruit / Tutti Frutti / Crystallized Fruit / Glacé Fruit",
        "calorie": "36.52",
        "protein": "0.58",
        "carbo": "4.47",
        "fat": "1.82",
        "portion": "17.074999988079"
        ],
        [
        "name": "Macerated Fruit",
        "calorie": "194.22",
        "protein": "4.27",
        "carbo": "41.5",
        "fat": "1.24",
        "portion": "218.99441197875"
        ],
        [
        "name": "Tomato & Potato Omelette ( Cyprus Dish )",
        "calorie": "299",
        "protein": "19",
        "carbo": "13.02",
        "fat": "18.99",
        "portion": "349.75"
        ],
        [
        "name": "Chocolate Chocolate Muffins",
        "calorie": "248.99",
        "protein": "4.64",
        "carbo": "22.22",
        "fat": "15.73",
        "portion": "66.78437511525"
        ],
        [
        "name": "Lamb Shish Kebab",
        "calorie": "234.52",
        "protein": "4.95",
        "carbo": "14.92",
        "fat": "17.23",
        "portion": "274.7216365625"
        ],
        [
        "name": "Baked Fish",
        "calorie": "337.25",
        "protein": "10.21",
        "carbo": "63.05",
        "fat": "4.92",
        "portion": "95.066666558385"
        ],
        [
        "name": "Slow Cooker Macaroni And Cheese With 6 Cheeses",
        "calorie": "782.87",
        "protein": "36.75",
        "carbo": "33.44",
        "fat": "55.79",
        "portion": "280.9750002305"
        ],
        [
        "name": "Syrian Salad",
        "calorie": "163.79",
        "protein": "3.86",
        "carbo": "12.07",
        "fat": "11.12",
        "portion": "266.39930030478"
        ],
        [
        "name": "Sweet Sweet Potatoes",
        "calorie": "229.15",
        "protein": "1.61",
        "carbo": "29.27",
        "fat": "11.74",
        "portion": "106.17083379433"
        ],
        [
        "name": "Strawberry Shake",
        "calorie": "221.18",
        "protein": "14.61",
        "carbo": "20.21",
        "fat": "9.1",
        "portion": "238.42083333333"
        ],
        [
        "name": "Milk Bread",
        "calorie": "523.42",
        "protein": "10.81",
        "carbo": "82.8",
        "fat": "16.56",
        "portion": "155.11799300297"
        ],
        [
        "name": "Make Your Own Yogurt",
        "calorie": "3196.23",
        "protein": "77.37",
        "carbo": "530.52",
        "fat": "84.96",
        "portion": "1015.8522762591"
        ],
        [
        "name": "Mapo Tofu Ramen",
        "calorie": "545.98",
        "protein": "19.67",
        "carbo": "42.46",
        "fat": "33.05",
        "portion": "219.75998783112"
        ],
        [
        "name": "The Best Grilled Chicken Breast",
        "calorie": "136.07",
        "protein": "5.69",
        "carbo": "11.6",
        "fat": "7.43",
        "portion": "197.38333333333"
        ],
        [
        "name": "Sausage Chilequiles",
        "calorie": "979.98",
        "protein": "11.27",
        "carbo": "89.6",
        "fat": "64.06",
        "portion": "326.39152189956"
        ],
        [
        "name": "Creamy Strawberry Ice Cream",
        "calorie": "455.7",
        "protein": "9.77",
        "carbo": "67.37",
        "fat": "16.35",
        "portion": "152.7828068883"
        ],
        [
        "name": "Seafood Salad/Crab Salad Spread",
        "calorie": "69.19",
        "protein": "1.27",
        "carbo": "5.25",
        "fat": "4.79",
        "portion": "29.635118619792"
        ],
        [
        "name": "Zoodles & Shrimp",
        "calorie": "220.76",
        "protein": "28.93",
        "carbo": "16.63",
        "fat": "4.28",
        "portion": "447.59713875"
        ],
        [
        "name": "Disappearing Yogurt",
        "calorie": "281.5",
        "protein": "9.15",
        "carbo": "42.92",
        "fat": "8.14",
        "portion": "344.1625"
        ],
        [
        "name": "Dumpster Fries - Homemade Fries",
        "calorie": "979.41",
        "protein": "36.56",
        "carbo": "39.48",
        "fat": "75.03",
        "portion": "385.64229726791"
        ],
        [
        "name": "Syrian Cookies",
        "calorie": "70.67",
        "protein": "0.68",
        "carbo": "7.19",
        "fat": "4.36",
        "portion": "14.181597222222"
        ],
        [
        "name": "Good Water/Lemon Water",
        "calorie": "81.84",
        "protein": "0",
        "carbo": "20.45",
        "fat": "0",
        "portion": "179.35716718038"
        ],
        [
        "name": "Sausage Gravy",
        "calorie": "900.17",
        "protein": "28.62",
        "carbo": "91.41",
        "fat": "46.67",
        "portion": "281.3668425"
        ],
        [
        "name": "Ramen Blt",
        "calorie": "188.62",
        "protein": "11.45",
        "carbo": "14.47",
        "fat": "9.44",
        "portion": "123.13690390625"
        ],
        [
        "name": "Pizza Hut Pizza Sauce - ( Copycat)",
        "calorie": "219.55",
        "protein": "9.27",
        "carbo": "26.51",
        "fat": "8.49",
        "portion": "217.60833385196"
        ],
        [
        "name": "Three Cheese Macaroni & Cheese",
        "calorie": "428.77",
        "protein": "23.27",
        "carbo": "27.46",
        "fat": "25.1",
        "portion": "208.5096847266"
        ],
        [
        "name": "Sausage Pasta",
        "calorie": "383.78",
        "protein": "19.27",
        "carbo": "26.29",
        "fat": "22.39",
        "portion": "339.52105426067"
        ],
        [
        "name": "Salted Toffee Rugelach",
        "calorie": "266.54",
        "protein": "2.89",
        "carbo": "21.08",
        "fat": "18.96",
        "portion": "51.782827229611"
        ],
        [
        "name": "Chicken Chickpea Salad",
        "calorie": "371.75",
        "protein": "12.32",
        "carbo": "23.96",
        "fat": "25.18",
        "portion": "311.78715495543"
        ],
        [
        "name": "Vege-Bread Salad",
        "calorie": "465.48",
        "protein": "8.66",
        "carbo": "5.84",
        "fat": "45.28",
        "portion": "228.82350211591"
        ],
        [
        "name": "Sausage Gravy",
        "calorie": "248.06",
        "protein": "18.43",
        "carbo": "7.07",
        "fat": "16.23",
        "portion": "191.52347534299"
        ],
        [
        "name": "No-Bake Chocolate Cake",
        "calorie": "1494.74",
        "protein": "18.86",
        "carbo": "44.59",
        "fat": "137.88",
        "portion": "317.2105178833"
        ],
        [
        "name": "Cherry Banana Berry Green Smoothie",
        "calorie": "103.99",
        "protein": "2.49",
        "carbo": "22.33",
        "fat": "0.53",
        "portion": "171.625"
        ],
        [
        "name": "Slow-Roasted Duck",
        "calorie": "181.57",
        "protein": "2.09",
        "carbo": "38.79",
        "fat": "2.01",
        "portion": "226.18714261055"
        ],
        [
        "name": "Salmon Scallopini With Almond Orzo",
        "calorie": "1462.14",
        "protein": "51.13",
        "carbo": "130.07",
        "fat": "81.92",
        "portion": "540.949523125"
        ],
        [
        "name": "Avocado Dip",
        "calorie": "536.94",
        "protein": "10.95",
        "carbo": "46.01",
        "fat": "34.34",
        "portion": "424.92635937487"
        ],
        [
        "name": "Deli Meat Ranch Melt Sandwich",
        "calorie": "815.28",
        "protein": "42.17",
        "carbo": "43.55",
        "fat": "52.49",
        "portion": "250.29999923706"
        ],
        [
        "name": "Milk & Honey",
        "calorie": "148.96",
        "protein": "7.69",
        "carbo": "11.71",
        "fat": "7.93",
        "portion": "256.40291595459"
        ],
        [
        "name": "Raspberry Sherbet",
        "calorie": "260.16",
        "protein": "3.99",
        "carbo": "53",
        "fat": "3.58",
        "portion": "222.6796875"
        ],
        [
        "name": "Jicama Fries",
        "calorie": "2.55",
        "protein": "0.03",
        "carbo": "0.27",
        "fat": "0.15",
        "portion": "2.9444444444444"
        ],
        [
        "name": "Cou-Cou",
        "calorie": "246.79",
        "protein": "6.48",
        "carbo": "48.3",
        "fat": "3.07",
        "portion": "178.07569505911"
        ],
        [
        "name": "Raspberry Mousse",
        "calorie": "250.77",
        "protein": "5.22",
        "carbo": "20.76",
        "fat": "16.32",
        "portion": "116.87638888889"
        ],
        [
        "name": "Avocado Toast",
        "calorie": "292.33",
        "protein": "3.81",
        "carbo": "20.07",
        "fat": "21.87",
        "portion": "100.8"
        ],
        [
        "name": "Cow Pies Candy",
        "calorie": "89.03",
        "protein": "1.65",
        "carbo": "8.68",
        "fat": "5.3",
        "portion": "26.275"
        ],
        [
        "name": "Great Roast",
        "calorie": "110.95",
        "protein": "12.99",
        "carbo": "1.58",
        "fat": "5.85",
        "portion": "80.656052857143"
        ],
        [
        "name": "Blueberry Coconut Ice Cream-Dream",
        "calorie": "406.43",
        "protein": "3.23",
        "carbo": "41.23",
        "fat": "25.4",
        "portion": "242.71666666667"
        ],
        [
        "name": "Molten Chocolate Cake Or Coulant Au Chocolat",
        "calorie": "568.06",
        "protein": "9.1",
        "carbo": "48.66",
        "fat": "37.45",
        "portion": "170"
        ],
        [
        "name": "Spiced Pineapple Guava (Feijoa) Chutney",
        "calorie": "1033.79",
        "protein": "3.11",
        "carbo": "247.97",
        "fat": "3.28",
        "portion": "338.89406329393"
        ],
        [
        "name": "Simple Pleasure Waffle / Waffles And Ice Cream !!!",
        "calorie": "161.93",
        "protein": "3.15",
        "carbo": "21.29",
        "fat": "7.13",
        "portion": "68"
        ],
        [
        "name": "Strawberry Shake",
        "calorie": "165.97",
        "protein": "5.18",
        "carbo": "14.6",
        "fat": "9.65",
        "portion": "1433.0305352211"
        ],
        [
        "name": "Wonder Fries",
        "calorie": "219.87",
        "protein": "2.54",
        "carbo": "21.18",
        "fat": "13.89",
        "portion": "199.01797208333"
        ],
        [
        "name": "Poached Guavas With Kiwi And Papaya",
        "calorie": "192.99",
        "protein": "4.75",
        "carbo": "36.23",
        "fat": "3.23",
        "portion": "231.19999980927"
        ],
        [
        "name": "Greek Fish",
        "calorie": "152.59",
        "protein": "21.51",
        "carbo": "4.56",
        "fat": "5.37",
        "portion": "155.23142583333"
        ],
        [
        "name": "Sweet Popovers",
        "calorie": "229.36",
        "protein": "8.54",
        "carbo": "32.06",
        "fat": "7.44",
        "portion": "127.9067258386"
        ],
        [
        "name": "Diy Yogurt",
        "calorie": "190.77",
        "protein": "19.29",
        "carbo": "27.85",
        "fat": "0.25",
        "portion": "514.86659052765"
        ],
        [
        "name": "Apple Cinnamon Water",
        "calorie": "64.89",
        "protein": "0.32",
        "carbo": "15.44",
        "fat": "0.2",
        "portion": "111.20000004768"
        ],
        [
        "name": "Strawberry Milkshake",
        "calorie": "59.07",
        "protein": "0.83",
        "carbo": "9.6",
        "fat": "1.93",
        "portion": "56.75"
        ],
        [
        "name": "Parsnip Fries",
        "calorie": "454.31",
        "protein": "3.19",
        "carbo": "47.85",
        "fat": "27.79",
        "portion": "295.05"
        ],
        [
        "name": "Sausage Sandwich",
        "calorie": "194.53",
        "protein": "5.06",
        "carbo": "20.21",
        "fat": "10.38",
        "portion": "70"
        ],
        [
        "name": "Milk Halwa",
        "calorie": "126.33",
        "protein": "3.3",
        "carbo": "23.72",
        "fat": "2.03",
        "portion": "80.3"
        ],
        [
        "name": "\" Sticky Chicky \" Dump Chicken",
        "calorie": "200.88",
        "protein": "23.91",
        "carbo": "5.88",
        "fat": "9.08",
        "portion": "138.3980925"
        ],
        [
        "name": "Tomato & Herb Potatoes",
        "calorie": "322.1",
        "protein": "15.19",
        "carbo": "51.18",
        "fat": "6.29",
        "portion": "860.27453173448"
        ],
        [
        "name": "Mushroom Strudel",
        "calorie": "196",
        "protein": "6.72",
        "carbo": "12.16",
        "fat": "13.39",
        "portion": "155.17048844858"
        ],
        [
        "name": "Potato Home Fries – Breakfast Potatoes",
        "calorie": "122.45",
        "protein": "5.11",
        "carbo": "17.7",
        "fat": "3.47",
        "portion": "136.48257595487"
        ],
        [
        "name": "Sweet Pretzels",
        "calorie": "254.94",
        "protein": "5.79",
        "carbo": "34.73",
        "fat": "10.32",
        "portion": "87.073958333333"
        ],
        [
        "name": "Waffle Pizza",
        "calorie": "397.38",
        "protein": "10.51",
        "carbo": "70.28",
        "fat": "8.25",
        "portion": "119.61041781916"
        ],
        [
        "name": "Fish Kebab Grilled Fish Pancake",
        "calorie": "20.35",
        "protein": "0.28",
        "carbo": "2.05",
        "fat": "1.23",
        "portion": "38.080555595458"
        ],
        [
        "name": "Shrimp Scampi",
        "calorie": "171.62",
        "protein": "23.22",
        "carbo": "2.15",
        "fat": "7.79",
        "portion": "133.05017629433"
        ],
        [
        "name": "Sausage Cacciatore",
        "calorie": "405.72",
        "protein": "26.43",
        "carbo": "42.75",
        "fat": "14.34",
        "portion": "253.0511242691"
        ],
        [
        "name": "(Juicy Juice Apple Cider Adapted From Juicy Juice)",
        "calorie": "77.61",
        "protein": "1.4",
        "carbo": "15.82",
        "fat": "0.97",
        "portion": "111.48372224466"
        ],
        [
        "name": "Vanilla Marshmallows",
        "calorie": "614.56",
        "protein": "6.16",
        "carbo": "145.77",
        "fat": "0.76",
        "portion": "223.74669122696"
        ],
        [
        "name": "Banana Yeast Bread",
        "calorie": "571.52",
        "protein": "11.77",
        "carbo": "119.57",
        "fat": "5.13",
        "portion": "219.48210827261"
        ],
        [
        "name": "Oven Fries",
        "calorie": "72.2",
        "protein": "0.3",
        "carbo": "2.56",
        "fat": "6.75",
        "portion": "22.536324863158"
        ],
        [
        "name": "Pork Empanadas",
        "calorie": "174.08",
        "protein": "4.03",
        "carbo": "20.83",
        "fat": "8.3",
        "portion": "66.795833506208"
        ],
        [
        "name": "Roast Pork Loin With Pickled Caramelized Guavas",
        "calorie": "295.54",
        "protein": "6.55",
        "carbo": "41.34",
        "fat": "11.56",
        "portion": "276.18262460828"
        ],
        [
        "name": "Machbuss Rubian (Shrimp And Rice Pilaf)",
        "calorie": "598.05",
        "protein": "30.98",
        "carbo": "62.95",
        "fat": "24.71",
        "portion": "506.25595021248"
        ],
        [
        "name": "Veg Fried Rice",
        "calorie": "956.31",
        "protein": "21.55",
        "carbo": "181.93",
        "fat": "15.82",
        "portion": "395.067647174"
        ],
        [
        "name": "Pork Chops With Cranberry, Port, And Rosemary Sauce",
        "calorie": "475.72",
        "protein": "33.65",
        "carbo": "30.74",
        "fat": "24.24",
        "portion": "286.38958333333"
        ],
        [
        "name": "Crispy Oven Fried Low Carb Zucchini Fries",
        "calorie": "235.36",
        "protein": "22.49",
        "carbo": "8.48",
        "fat": "12.39",
        "portion": "110.67120337486"
        ],
        [
        "name": "Salted Maple Caramel",
        "calorie": "86.01",
        "protein": "0.11",
        "carbo": "10.72",
        "fat": "4.74",
        "portion": "19.376389196221"
        ],
        [
        "name": "Jerk Fish",
        "calorie": "264.35",
        "protein": "10.55",
        "carbo": "9.3",
        "fat": "20.55",
        "portion": "109.57407414913"
        ],
        [
        "name": "Creme De Menthe Mousse",
        "calorie": "883.6",
        "protein": "5.26",
        "carbo": "150.18",
        "fat": "29.09",
        "portion": "276"
        ],
        [
        "name": "Authentic Kicked-Up Syrian Hummus",
        "calorie": "585.79",
        "protein": "17.75",
        "carbo": "48.67",
        "fat": "35.57",
        "portion": "315.41464530525"
        ],
        [
        "name": "Thun Salat -German Tuna Salad",
        "calorie": "273.57",
        "protein": "10.35",
        "carbo": "24.98",
        "fat": "14.69",
        "portion": "357.6242846875"
        ],
        [
        "name": "Fried Egg",
        "calorie": "191.27",
        "protein": "2.5",
        "carbo": "4.04",
        "fat": "18.35",
        "portion": "38.46214234375"
        ],
        [
        "name": "Methi Malai Paneer",
        "calorie": "633.53",
        "protein": "17.39",
        "carbo": "44.47",
        "fat": "42.9",
        "portion": "506.91862376779"
        ],
        [
        "name": "Syrian Spaghetti",
        "calorie": "160.73",
        "protein": "3.65",
        "carbo": "20.51",
        "fat": "7.12",
        "portion": "107.90831755474"
        ],
        [
        "name": "Raspberry Lemonade",
        "calorie": "957.44",
        "protein": "4.87",
        "carbo": "231.32",
        "fat": "1.41",
        "portion": "648.25"
        ],
        [
        "name": "Banana Sushi",
        "calorie": "355.67",
        "protein": "7.87",
        "carbo": "50.23",
        "fat": "13.7",
        "portion": "202.425"
        ],
        [
        "name": "Sorrel Juice",
        "calorie": "34.45",
        "protein": "0.72",
        "carbo": "7.52",
        "fat": "0.17",
        "portion": "907.69412231445"
        ],
        [
        "name": "Bulgarian Wine Kebab",
        "calorie": "369.9",
        "protein": "28.83",
        "carbo": "17.72",
        "fat": "20.41",
        "portion": "304.33206166667"
        ],
        [
        "name": "Fermented Chili Tofu (Chao)",
        "calorie": "12.2",
        "protein": "0.77",
        "carbo": "0.21",
        "fat": "0.92",
        "portion": "10.559199882093"
        ],
        [
        "name": "Water Crackers",
        "calorie": "8",
        "protein": "0.27",
        "carbo": "1.47",
        "fat": "0.11",
        "portion": "2.3475"
        ],
        [
        "name": "Salted Caramel Waffle",
        "calorie": "433.94",
        "protein": "13.81",
        "carbo": "58.4",
        "fat": "16.12",
        "portion": "233.85833379433"
        ],
        [
        "name": "Sushi Rolls",
        "calorie": "472.97",
        "protein": "6.31",
        "carbo": "72.52",
        "fat": "17.52",
        "portion": "289.83889341354"
        ],
        [
        "name": "Butterfly Waffle",
        "calorie": "672.01",
        "protein": "11.09",
        "carbo": "100.75",
        "fat": "24.96",
        "portion": "504.91111172578"
        ],
        [
        "name": "Spiced Roast Chicken Breast",
        "calorie": "94.25",
        "protein": "5.77",
        "carbo": "1.46",
        "fat": "7.26",
        "portion": "39.829168625909"
        ],
        [
        "name": "Copycat Duncan Hines Boxed Cake Mix",
        "calorie": "203.75",
        "protein": "4.41",
        "carbo": "23.18",
        "fat": "10.37",
        "portion": "86.102777854611"
        ],
        [
        "name": "Spicy Coleslaw",
        "calorie": "155.69",
        "protein": "0.78",
        "carbo": "6.93",
        "fat": "13.87",
        "portion": "85.554166666667"
        ],
        [
        "name": "Duck Rendang",
        "calorie": "1117.25",
        "protein": "58.87",
        "carbo": "92.85",
        "fat": "56.71",
        "portion": "891.00447177887"
        ],
        [
        "name": "Salted Cardamon Fudge",
        "calorie": "560.87",
        "protein": "0.18",
        "carbo": "112.67",
        "fat": "12.17",
        "portion": "159.0707225576"
        ],
        [
        "name": "Shrimp Scampi",
        "calorie": "768.06",
        "protein": "42.35",
        "carbo": "66.89",
        "fat": "36.79",
        "portion": "333.3652343601"
        ],
        [
        "name": "Salted Rye Cookies",
        "calorie": "144.49",
        "protein": "1.5",
        "carbo": "16.55",
        "fat": "8.03",
        "portion": "30.975"
        ],
        [
        "name": "Spicy Rémoulade",
        "calorie": "55.41",
        "protein": "0.09",
        "carbo": "1.37",
        "fat": "5.5",
        "portion": "16.135416666667"
        ],
        [
        "name": "White Pizza",
        "calorie": "290.44",
        "protein": "13.43",
        "carbo": "7.53",
        "fat": "22.96",
        "portion": "77.8125"
        ],
        [
        "name": "Easy Waffle",
        "calorie": "324.31",
        "protein": "11.41",
        "carbo": "43.13",
        "fat": "11.79",
        "portion": "169.04166728133"
        ],
        [
        "name": "Jingle Juice",
        "calorie": "1196.28",
        "protein": "13.1",
        "carbo": "239.58",
        "fat": "20.62",
        "portion": "1741.5568618774"
        ],
        [
        "name": "Sweet Gravy",
        "calorie": "1364.46",
        "protein": "27.42",
        "carbo": "241.37",
        "fat": "32.15",
        "portion": "405.92361111111"
        ],
        [
        "name": "Carrot Risotto",
        "calorie": "283.36",
        "protein": "10.06",
        "carbo": "35.47",
        "fat": "11.25",
        "portion": "308.2078125"
        ],
        [
        "name": "Chinese Chews Ii",
        "calorie": "226.9",
        "protein": "3.05",
        "carbo": "25.58",
        "fat": "12.48",
        "portion": "51.541666666667"
        ],
        [
        "name": "Pork Tenderloin",
        "calorie": "1090.33",
        "protein": "15.85",
        "carbo": "5.25",
        "fat": "111.77",
        "portion": "185.59713745117"
        ],
        [
        "name": "Duck Bone Broth",
        "calorie": "355.51",
        "protein": "27.66",
        "carbo": "24.98",
        "fat": "16.1",
        "portion": "434.923569375"
        ],
        [
        "name": "Mashed Cauliflower",
        "calorie": "68.13",
        "protein": "1.76",
        "carbo": "3.26",
        "fat": "5.34",
        "portion": "65.0125"
        ],
        [
        "name": "Steak",
        "calorie": "905.26",
        "protein": "63.29",
        "carbo": "51.35",
        "fat": "49.63",
        "portion": "647.88395120203"
        ],
        [
        "name": "Mushroom Soufflé",
        "calorie": "480.99",
        "protein": "15.05",
        "carbo": "20.14",
        "fat": "37.8",
        "portion": "240.08760784575"
        ],
        [
        "name": "Methi Theplas",
        "calorie": "793.94",
        "protein": "37.11",
        "carbo": "133.32",
        "fat": "12.47",
        "portion": "951.40014953911"
        ],
        [
        "name": "Pumpkin Juice",
        "calorie": "129.97",
        "protein": "2.05",
        "carbo": "27.8",
        "fat": "1.17",
        "portion": "275.94335277677"
        ],
        [
        "name": "Coffee Coffee Coffee Cake",
        "calorie": "665.98",
        "protein": "7.41",
        "carbo": "80.9",
        "fat": "34.75",
        "portion": "173.94821371528"
        ],
        [
        "name": "Matar Mushroom Masala | Mushroom Peas Curry | Mushroom Recipes",
        "calorie": "372.44",
        "protein": "13.36",
        "carbo": "40.02",
        "fat": "17.66",
        "portion": "497.94399602711"
        ],
        [
        "name": "Un-Fried French Fries",
        "calorie": "38.37",
        "protein": "3.02",
        "carbo": "6.4",
        "fat": "0.08",
        "portion": "66.125"
        ],
        [
        "name": "Chocolate Yeast Bread",
        "calorie": "167.3",
        "protein": "3.77",
        "carbo": "26.1",
        "fat": "5.31",
        "portion": "45.731803699249"
        ],
        [
        "name": "Cow Pies",
        "calorie": "117.52",
        "protein": "1.64",
        "carbo": "13.43",
        "fat": "6.36",
        "portion": "22.3122615625"
        ],
        [
        "name": "Tamarind Juice",
        "calorie": "568.14",
        "protein": "36.28",
        "carbo": "96.74",
        "fat": "4.01",
        "portion": "398.7"
        ],
        [
        "name": "Oven Baked Chicken & Veg Chimichangas",
        "calorie": "951.84",
        "protein": "46.22",
        "carbo": "96.66",
        "fat": "42.26",
        "portion": "579.97725916667"
        ],
        [
        "name": "Gingerbread Milkshake",
        "calorie": "338.79",
        "protein": "6.34",
        "carbo": "53",
        "fat": "11.27",
        "portion": "199.04845215278"
        ],
        [
        "name": "Great Everyday Bread",
        "calorie": "513.68",
        "protein": "12.99",
        "carbo": "99.72",
        "fat": "6.98",
        "portion": "199.55000066757"
        ],
        [
        "name": "Pizza Crust",
        "calorie": "316.44",
        "protein": "10.57",
        "carbo": "7.59",
        "fat": "27.09",
        "portion": "58.4875"
        ],
        [
        "name": "Yogurt Bread",
        "calorie": "132.91",
        "protein": "3.97",
        "carbo": "21.68",
        "fat": "3.37",
        "portion": "45.424583517733"
        ],
        [
        "name": "Green Juice",
        "calorie": "82.95",
        "protein": "1.04",
        "carbo": "18.67",
        "fat": "0.46",
        "portion": "147.02281880379"
        ],
        [
        "name": "Cobb  Salad",
        "calorie": "3901.47",
        "protein": "136.45",
        "carbo": "27.66",
        "fat": "360.56",
        "portion": "1334.53125"
        ],
        [
        "name": "Strawberry Milkshake",
        "calorie": "39.15",
        "protein": "0.46",
        "carbo": "3.03",
        "fat": "2.8",
        "portion": "44.199999809265"
        ],
        [
        "name": "Fish Curry",
        "calorie": "324.51",
        "protein": "14",
        "carbo": "47.55",
        "fat": "8.71",
        "portion": "332.93026292324"
        ],
        [
        "name": "Mint Yogurt",
        "calorie": "111.81",
        "protein": "2.56",
        "carbo": "20.09",
        "fat": "2.36",
        "portion": "58.758333333333"
        ],
        [
        "name": "Sushi Rolls",
        "calorie": "570.03",
        "protein": "19.27",
        "carbo": "103.51",
        "fat": "8.76",
        "portion": "250.9305346875"
        ],
        [
        "name": "Salted Caramel Truffles",
        "calorie": "398.12",
        "protein": "4.8",
        "carbo": "32.86",
        "fat": "27.5",
        "portion": "103.52065533841"
        ],
        [
        "name": "Carrot Cookies",
        "calorie": "154.75",
        "protein": "3.03",
        "carbo": "16.18",
        "fat": "8.66",
        "portion": "36.4229167435"
        ],
        [
        "name": "Amaretto Cow",
        "calorie": "589.02",
        "protein": "5.94",
        "carbo": "55",
        "fat": "38.36",
        "portion": "217.747615625"
        ],
        [
        "name": "Turmeric Milk",
        "calorie": "130.25",
        "protein": "1.2",
        "carbo": "10.44",
        "fat": "9.3",
        "portion": "277.71838274039"
        ],
        [
        "name": "Oven Fries",
        "calorie": "85.24",
        "protein": "1.03",
        "carbo": "4.97",
        "fat": "6.8",
        "portion": "45.838936068118"
        ],
        [
        "name": "Chocolate Chocolate Cake",
        "calorie": "2487.44",
        "protein": "26.98",
        "carbo": "315.9",
        "fat": "123.99",
        "portion": "603.90618854833"
        ],
        [
        "name": "Egg Muffins",
        "calorie": "358.77",
        "protein": "32.19",
        "carbo": "17.77",
        "fat": "17.66",
        "portion": "455.24243859375"
        ],
        [
        "name": "Sweet Rice",
        "calorie": "381.33",
        "protein": "8.41",
        "carbo": "56.47",
        "fat": "13.54",
        "portion": "227.79652777778"
        ],
        [
        "name": "Meat Ragout",
        "calorie": "965.85",
        "protein": "72.33",
        "carbo": "111.65",
        "fat": "25.55",
        "portion": "632.14380407333"
        ],
        [
        "name": "Strawberry Milkshake Recipe | Milkshake Recipes",
        "calorie": "1325.09",
        "protein": "28.46",
        "carbo": "203.4",
        "fat": "44.18",
        "portion": "496.39989303991"
        ],
        [
        "name": "Vanilla Custard",
        "calorie": "901.62",
        "protein": "41.23",
        "carbo": "30.28",
        "fat": "68.4",
        "portion": "336.79218745232"
        ],
        [
        "name": "Fall Salad (Salada De Abobrinha)",
        "calorie": "95.93",
        "protein": "1.72",
        "carbo": "4.72",
        "fat": "7.8",
        "portion": "93.173828082794"
        ],
        [
        "name": "Almond Crusted Salmon With Honey Garlic Sauce",
        "calorie": "570.21",
        "protein": "31.44",
        "carbo": "21.48",
        "fat": "39.84",
        "portion": "181.16059417278"
        ],
        [
        "name": "Bubba Gump Shrimp Company Shrimpin’ Dippin’ Broth",
        "calorie": "208.62",
        "protein": "18.71",
        "carbo": "15.35",
        "fat": "8.04",
        "portion": "268.6841621055"
        ],
        [
        "name": "Salsa Burger",
        "calorie": "508.12",
        "protein": "23.68",
        "carbo": "9.34",
        "fat": "41.78",
        "portion": "180.191842961"
        ],
        [
        "name": "Cherry Berry Cashew Ginger Smoothie",
        "calorie": "516.07",
        "protein": "10.43",
        "carbo": "68.33",
        "fat": "22.34",
        "portion": "483.36666666667"
        ],
        [
        "name": "Waffle House Waffles",
        "calorie": "314.65",
        "protein": "7.3",
        "carbo": "40.2",
        "fat": "13.85",
        "portion": "106.770833948"
        ],
        [
        "name": "Homemade Lacto-Fermented Grape Jello",
        "calorie": "124.43",
        "protein": "0.61",
        "carbo": "29.31",
        "fat": "0.53",
        "portion": "272.63125"
        ],
        [
        "name": "Meat Buns",
        "calorie": "187.34",
        "protein": "12.81",
        "carbo": "21.16",
        "fat": "5.72",
        "portion": "89.341031305492"
        ],
        [
        "name": "Greek Chicken And Veg",
        "calorie": "145.36",
        "protein": "11.31",
        "carbo": "9.86",
        "fat": "6.74",
        "portion": "179.68285645833"
        ],
        [
        "name": "Mocha Milkshake",
        "calorie": "592.16",
        "protein": "8.37",
        "carbo": "78.71",
        "fat": "27.09",
        "portion": "324.75"
        ],
        [
        "name": "Syrian Rice",
        "calorie": "346.78",
        "protein": "6.02",
        "carbo": "53.53",
        "fat": "12.06",
        "portion": "125.56527839244"
        ],
        [
        "name": "Citrus Water",
        "calorie": "80.01",
        "protein": "0.99",
        "carbo": "18.24",
        "fat": "0.34",
        "portion": "255.83333333333"
        ],
        [
        "name": "Mavadu/ Vadu Mangai/ Kadukku Mangai/ Baby Mangoes In Brine Pickle",
        "calorie": "29.97",
        "protein": "0.34",
        "carbo": "6.8",
        "fat": "0.16",
        "portion": "114.875"
        ],
        [
        "name": "Linguini Salad (Pasta Salad)",
        "calorie": "223.9",
        "protein": "6.48",
        "carbo": "37.01",
        "fat": "5.55",
        "portion": "127.0388555"
        ],
        [
        "name": "Mashed Potatoes",
        "calorie": "273.52",
        "protein": "5.47",
        "carbo": "23.42",
        "fat": "17.55",
        "portion": "114.6096185"
        ],
        [
        "name": "Ice Cream Maker Creamy Strawberry Ice Cream",
        "calorie": "0.87",
        "protein": "0.03",
        "carbo": "0.07",
        "fat": "0.05",
        "portion": "0.73540394287242"
        ],
        [
        "name": "Methi Puri",
        "calorie": "51.25",
        "protein": "1.98",
        "carbo": "9.65",
        "fat": "0.52",
        "portion": "76.550342166796"
        ],
        [
        "name": "Extra-Cheesy Macaroni And Cheese",
        "calorie": "173.54",
        "protein": "8.1",
        "carbo": "25.23",
        "fat": "4.47",
        "portion": "133.82406577468"
        ],
        [
        "name": "North Croatian Vanilla Cookies (“Vanila-Kifli”)",
        "calorie": "317.31",
        "protein": "3.35",
        "carbo": "18.54",
        "fat": "25.53",
        "portion": "63.544444444444"
        ],
        [
        "name": "No Bake Strawberry Icebox Cake",
        "calorie": "255.61",
        "protein": "2.46",
        "carbo": "14.45",
        "fat": "20.89",
        "portion": "119.88933825493"
        ],
        [
        "name": "Tamale Pie",
        "calorie": "140.47",
        "protein": "13.92",
        "carbo": "3.6",
        "fat": "7.82",
        "portion": "138.19592208415"
        ],
        [
        "name": "Iced Tea",
        "calorie": "60.94",
        "protein": "0.56",
        "carbo": "14.46",
        "fat": "0.1",
        "portion": "53.125"
        ],
        [
        "name": "Strawberry Shortcakes",
        "calorie": "479.24",
        "protein": "8.37",
        "carbo": "67.1",
        "fat": "19.71",
        "portion": "254.89166666667"
        ],
        [
        "name": "Kibbi Be Saniah – Syrian Meatloaf",
        "calorie": "7273.63",
        "protein": "173.09",
        "carbo": "162.02",
        "fat": "659.24",
        "portion": "1287.426482633"
        ],
        [
        "name": "Mashed Cauliflower",
        "calorie": "385.15",
        "protein": "11.73",
        "carbo": "52.73",
        "fat": "14.15",
        "portion": "312.59375"
        ],
        [
        "name": "Chicken.....Fried Chicken",
        "calorie": "232.34",
        "protein": "9.77",
        "carbo": "16.85",
        "fat": "13.99",
        "portion": "78.636666758866"
        ],
        [
        "name": "Strawberry Milkshake",
        "calorie": "553.9",
        "protein": "15.36",
        "carbo": "87.28",
        "fat": "15.93",
        "portion": "217.91145833333"
        ],
        [
        "name": "Grilled Rib-Eye Steaks With Cola Steak Sauce",
        "calorie": "597.47",
        "protein": "21.02",
        "carbo": "27",
        "fat": "45.04",
        "portion": "350.7825338617"
        ],
        [
        "name": "No Bake Chocolate Cake",
        "calorie": "321.28",
        "protein": "5.88",
        "carbo": "32.32",
        "fat": "18.72",
        "portion": "90.870475868384"
        ],
        [
        "name": "Homemade Yogurt",
        "calorie": "297.98",
        "protein": "18.97",
        "carbo": "28.37",
        "fat": "12.07",
        "portion": "568.82108794643"
        ],
        [
        "name": "Infused Water",
        "calorie": "67.55",
        "protein": "1.66",
        "carbo": "14.23",
        "fat": "0.44",
        "portion": "73"
        ],
        [
        "name": "Low-Fat Roasted Veges",
        "calorie": "33.05",
        "protein": "0.72",
        "carbo": "7.31",
        "fat": "0.1",
        "portion": "87.955859305108"
        ],
        [
        "name": "Pumpkin Yeast Bread",
        "calorie": "1076.7",
        "protein": "34.77",
        "carbo": "209.44",
        "fat": "11.09",
        "portion": "392.26317108198"
        ],
        [
        "name": "Fruit Dip",
        "calorie": "370.53",
        "protein": "3.5",
        "carbo": "45.15",
        "fat": "19.55",
        "portion": "111.33154505208"
        ],
        [
        "name": "Yogurt Cheese",
        "calorie": "309.24",
        "protein": "25.72",
        "carbo": "34.5",
        "fat": "7.59",
        "portion": "490"
        ],
        [
        "name": "Shrimp Scampi",
        "calorie": "411.08",
        "protein": "25.54",
        "carbo": "16.05",
        "fat": "27.19",
        "portion": "360.9375"
        ],
        [
        "name": "Cranberry Tea",
        "calorie": "197.44",
        "protein": "1.56",
        "carbo": "46.78",
        "fat": "0.45",
        "portion": "380.67972105063"
        ],
        [
        "name": "Salada De Cebola . Brazilian Onion Salad",
        "calorie": "86.55",
        "protein": "0.89",
        "carbo": "10.33",
        "fat": "4.63",
        "portion": "83"
        ],
        [
        "name": "Fermented Vegetables",
        "calorie": "203.78",
        "protein": "9.44",
        "carbo": "38.19",
        "fat": "1.47",
        "portion": "546"
        ],
        [
        "name": "Pork Loin With Figs And Port Sauce",
        "calorie": "600.68",
        "protein": "48.99",
        "carbo": "20.78",
        "fat": "35.73",
        "portion": "297.82431"
        ],
        [
        "name": "Oven Frites (Fries)",
        "calorie": "116.89",
        "protein": "0.99",
        "carbo": "4.8",
        "fat": "10.42",
        "portion": "51.637501382995"
        ],
        [
        "name": "Mashed Potatoes",
        "calorie": "46.24",
        "protein": "1.01",
        "carbo": "6.38",
        "fat": "1.85",
        "portion": "21.8"
        ],
        [
        "name": "Kimchi Ramen",
        "calorie": "14.79",
        "protein": "1.25",
        "carbo": "0.4",
        "fat": "0.91",
        "portion": "13.234375"
        ],
        [
        "name": "Mushroom Turnovers",
        "calorie": "772.06",
        "protein": "12.94",
        "carbo": "66.26",
        "fat": "50.58",
        "portion": "316.90850939717"
        ],
        [
        "name": "Yogurt Biscuits",
        "calorie": "97.35",
        "protein": "3.57",
        "carbo": "18.62",
        "fat": "0.96",
        "portion": "53.411111264777"
        ],
        [
        "name": "Sausage Biscuits",
        "calorie": "72.53",
        "protein": "3.84",
        "carbo": "5.49",
        "fat": "3.91",
        "portion": "24.718437917128"
        ],
        [
        "name": "Whipped Yogurt",
        "calorie": "81.82",
        "protein": "5.07",
        "carbo": "6.32",
        "fat": "4.03",
        "portion": "67.925"
        ],
        [
        "name": "Duck Fat Biscuits",
        "calorie": "146.51",
        "protein": "3.38",
        "carbo": "20.69",
        "fat": "5.58",
        "portion": "53.745454796908"
        ],
        [
        "name": "Orange Yogurt",
        "calorie": "1027.49",
        "protein": "26.8",
        "carbo": "123.84",
        "fat": "47.21",
        "portion": "590.83333333333"
        ],
        [
        "name": "Chocolate Chocolate, Baby!",
        "calorie": "228.83",
        "protein": "9.52",
        "carbo": "25.51",
        "fat": "9.86",
        "portion": "263.13333333333"
        ],
        [
        "name": "Sheet Pan Breakfast With Sweet Potatoes And Bacon",
        "calorie": "525.37",
        "protein": "22.51",
        "carbo": "5.35",
        "fat": "45.99",
        "portion": "231.1"
        ],
        [
        "name": "Goat Cheese & Asparagus Grilled Cheese",
        "calorie": "673.91",
        "protein": "34.8",
        "carbo": "52.04",
        "fat": "36.28",
        "portion": "816.441893125"
        ],
        [
        "name": "Vanilla Extract",
        "calorie": "0",
        "protein": "0",
        "carbo": "0",
        "fat": "0",
        "portion": "0.75"
        ],
        [
        "name": "Poached Duck Breast",
        "calorie": "1736.46",
        "protein": "31.04",
        "carbo": "68.71",
        "fat": "148.61",
        "portion": "331.47499994375"
        ],
        [
        "name": "Potato Tomato & Avocado Salad",
        "calorie": "218.51",
        "protein": "11.36",
        "carbo": "34.73",
        "fat": "3.79",
        "portion": "654.975"
        ],
        [
        "name": "Green Juice",
        "calorie": "77.82",
        "protein": "1.77",
        "carbo": "15.17",
        "fat": "1.12",
        "portion": "326.33333333333"
        ],
        [
        "name": "Strawberry Semifreddo",
        "calorie": "308.42",
        "protein": "5.55",
        "carbo": "39.26",
        "fat": "14.35",
        "portion": "126.15"
        ],
        [
        "name": "Vanilla Cupcakes",
        "calorie": "197.96",
        "protein": "3.55",
        "carbo": "36.85",
        "fat": "4.04",
        "portion": "75.396527854611"
        ],
        [
        "name": "Spiced Pork",
        "calorie": "165.99",
        "protein": "5.93",
        "carbo": "23.73",
        "fat": "5.26",
        "portion": "48.941428690165"
        ],
        [
        "name": "Sausage Gravy",
        "calorie": "1649.66",
        "protein": "44.24",
        "carbo": "229.34",
        "fat": "61.71",
        "portion": "493.09872833333"
        ],
        [
        "name": "Oven Fries",
        "calorie": "283.74",
        "protein": "2.85",
        "carbo": "42.52",
        "fat": "11.36",
        "portion": "239.146185"
        ],
        [
        "name": "Kebab Iroog",
        "calorie": "68.26",
        "protein": "3.72",
        "carbo": "3.21",
        "fat": "4.5",
        "portion": "42.360628280853"
        ],
        [
        "name": "Cheesy Grilled Cheese",
        "calorie": "485.34",
        "protein": "22.74",
        "carbo": "34.27",
        "fat": "28.59",
        "portion": "150.45833333333"
        ],
        [
        "name": "Chocolate Chocolate Cake",
        "calorie": "2132.45",
        "protein": "28.9",
        "carbo": "320.84",
        "fat": "81.5",
        "portion": "625.74583425533"
        ],
        [
        "name": "Shepherd’S Pie",
        "calorie": "479.05",
        "protein": "21.51",
        "carbo": "14.81",
        "fat": "37.09",
        "portion": "321.77106118774"
        ],
        [
        "name": "Raspberry Tiramisu",
        "calorie": "798.52",
        "protein": "8.97",
        "carbo": "96.76",
        "fat": "41.73",
        "portion": "285.02938341901"
        ],
        [
        "name": "Puran Poli",
        "calorie": "332.13",
        "protein": "11.32",
        "carbo": "63.83",
        "fat": "3.5",
        "portion": "205.40840673447"
        ],
        [
        "name": "Mughlai Mushroom - Mushrooms Cooked In A Cashew Based Gravy",
        "calorie": "113.88",
        "protein": "6.61",
        "carbo": "17.68",
        "fat": "1.86",
        "portion": "245.60740722219"
        ],
        [
        "name": "Cheesy Potato Casserole (Funeral Potatoes)",
        "calorie": "695.02",
        "protein": "25.25",
        "carbo": "27.03",
        "fat": "53.99",
        "portion": "317.29999981076"
        ],
        [
        "name": "Poached Fish",
        "calorie": "1647.2",
        "protein": "49.02",
        "carbo": "172.56",
        "fat": "84.54",
        "portion": "616.33476880202"
        ],
        [
        "name": "Melt-In-Your-Mouth Meat Loaf",
        "calorie": "375.69",
        "protein": "21.69",
        "carbo": "36.97",
        "fat": "15.68",
        "portion": "160.86782617022"
        ],
        [
        "name": "Zwiebeln Salat (Swiss Onion Salad)",
        "calorie": "118.71",
        "protein": "1.37",
        "carbo": "10.77",
        "fat": "7.79",
        "portion": "122.89861172578"
        ],
        [
        "name": "Mushroom Spread",
        "calorie": "305.08",
        "protein": "5.62",
        "carbo": "6.74",
        "fat": "28.41",
        "portion": "127.48791643977"
        ],
        [
        "name": "Grilled Fish",
        "calorie": "262.58",
        "protein": "5.02",
        "carbo": "1.78",
        "fat": "26.16",
        "portion": "81.647917588663"
        ],
        [
        "name": "Coffee Toffee",
        "calorie": "1074.23",
        "protein": "6.52",
        "carbo": "93.22",
        "fat": "75.03",
        "portion": "188.0078125"
        ],
        [
        "name": "Rotisserie Chicken Ramen",
        "calorie": "760.88",
        "protein": "41.83",
        "carbo": "60.48",
        "fat": "39.07",
        "portion": "289.90634635417"
        ],
        [
        "name": "Watermelon Juice",
        "calorie": "288.76",
        "protein": "4.26",
        "carbo": "50.54",
        "fat": "7.73",
        "portion": "388.75666689717"
        ],
        [
        "name": "Pumpkin Fries!",
        "calorie": "226.21",
        "protein": "8.08",
        "carbo": "26.2",
        "fat": "9.9",
        "portion": "97.778809240916"
        ],
        [
        "name": "Methi Chicken Recipe - Easy Murgh Methi",
        "calorie": "739.76",
        "protein": "45.91",
        "carbo": "65.62",
        "fat": "32.63",
        "portion": "786.84530706704"
        ],
        [
        "name": "Tofu Fish (Or Not-Fish)",
        "calorie": "374.9",
        "protein": "13.66",
        "carbo": "5.96",
        "fat": "32.93",
        "portion": "176.85476190476"
        ],
        [
        "name": "Individual Chicken Pot Pie / Pies",
        "calorie": "414.87",
        "protein": "20.94",
        "carbo": "35.4",
        "fat": "21.06",
        "portion": "1177.3333333333"
        ],
        [
        "name": "Pizza Pies | Stuffed Vegetable Pizzas | How To Make Pizza Pies |Stepwise Pictures",
        "calorie": "1166.72",
        "protein": "26.55",
        "carbo": "196.93",
        "fat": "30.31",
        "portion": "827.02500009537"
        ],
        [
        "name": "Ful Medames, Syrian Style (Arabic Bean Salad) [Vegan, Gf]",
        "calorie": "716.4",
        "protein": "33.93",
        "carbo": "96.91",
        "fat": "21.45",
        "portion": "348.37725617187"
        ],
        [
        "name": "Salted Thyme Flatbread",
        "calorie": "242.07",
        "protein": "6.51",
        "carbo": "44.61",
        "fat": "4.18",
        "portion": "74.968750691497"
        ],
        [
        "name": "Healthy Vegetarian Ramen",
        "calorie": "434.62",
        "protein": "15.3",
        "carbo": "21.82",
        "fat": "31.79",
        "portion": "540.60607117187"
        ],
        [
        "name": "Fruit Infused Water",
        "calorie": "0.37",
        "protein": "0.01",
        "carbo": "0.08",
        "fat": "0",
        "portion": "95.131746411324"
        ],
        [
        "name": "Water Punch",
        "calorie": "222.03",
        "protein": "4.58",
        "carbo": "48.53",
        "fat": "1.06",
        "portion": "1438.9578491667"
        ],
        [
        "name": "Lunch Box Sushi",
        "calorie": "857.83",
        "protein": "82.65",
        "carbo": "97.15",
        "fat": "15.4",
        "portion": "712.69739564955"
        ],
        [
        "name": "Waffle House Waffles",
        "calorie": "332.54",
        "protein": "7.73",
        "carbo": "44.11",
        "fat": "13.91",
        "portion": "126.74305617022"
        ],
        [
        "name": "Carrot Pudding",
        "calorie": "415.86",
        "protein": "3.25",
        "carbo": "62.43",
        "fat": "17.02",
        "portion": "120.67083333333"
        ],
        [
        "name": "Raspberry Vinaigrette",
        "calorie": "173.82",
        "protein": "0.46",
        "carbo": "1.86",
        "fat": "18.28",
        "portion": "52.05000011525"
        ],
        [
        "name": "Roasted Fish",
        "calorie": "252.38",
        "protein": "24.62",
        "carbo": "1.79",
        "fat": "16.3",
        "portion": "170.849523125"
        ],
        [
        "name": "Chicken Ramen",
        "calorie": "1115.04",
        "protein": "78.99",
        "carbo": "40.62",
        "fat": "70.73",
        "portion": "468.93815718591"
        ],
        [
        "name": "Chocolate",
        "calorie": "531.31",
        "protein": "14.52",
        "carbo": "55.26",
        "fat": "28.02",
        "portion": "183.84038233757"
        ],
        [
        "name": "Garlic Coleslaw (Col Con Aderezo De Ajo)",
        "calorie": "106.68",
        "protein": "0.67",
        "carbo": "2.82",
        "fat": "10.3",
        "portion": "80.179167588663"
        ],
        [
        "name": "Waffle Benedicts",
        "calorie": "630.47",
        "protein": "35.36",
        "carbo": "19.26",
        "fat": "45.78",
        "portion": "309.04363543714"
        ],
        [
        "name": "Vanilla Cupcakes",
        "calorie": "89.38",
        "protein": "2.16",
        "carbo": "10.57",
        "fat": "4.27",
        "portion": "32.569444521277"
        ],
        [
        "name": "Hot Quinoa Cereal",
        "calorie": "300.64",
        "protein": "6.96",
        "carbo": "38.49",
        "fat": "13.2",
        "portion": "214.675"
        ],
        [
        "name": "California Sushi Roll",
        "calorie": "674.43",
        "protein": "39.24",
        "carbo": "61.14",
        "fat": "30.32",
        "portion": "372.4625"
        ],
        [
        "name": "Strawberry-Guava Smoothie",
        "calorie": "293.45",
        "protein": "3.75",
        "carbo": "40.42",
        "fat": "12.97",
        "portion": "229.25"
        ],
        [
        "name": "Hot Quinoa Cereal",
        "calorie": "932.6",
        "protein": "28.14",
        "carbo": "116.89",
        "fat": "39.17",
        "portion": "367.64926365018"
        ],
        [
        "name": "Carrot Halwa",
        "calorie": "185.97",
        "protein": "5.25",
        "carbo": "15.23",
        "fat": "11.56",
        "portion": "115.295"
        ],
        [
        "name": "Rose Water Lemonade",
        "calorie": "38.86",
        "protein": "0",
        "carbo": "9.48",
        "fat": "0.11",
        "portion": "274"
        ],
        [
        "name": "Kabab",
        "calorie": "646.65",
        "protein": "64.97",
        "carbo": "1.06",
        "fat": "42.5",
        "portion": "338.49722345155"
        ],
        [
        "name": "Home Fries",
        "calorie": "145.56",
        "protein": "0.98",
        "carbo": "4.73",
        "fat": "13.64",
        "portion": "57.6"
        ],
        [
        "name": "Strawberry Cow",
        "calorie": "1196.25",
        "protein": "27.54",
        "carbo": "194.26",
        "fat": "34.34",
        "portion": "528.33333333333"
        ],
        [
        "name": "Egg Nog Egg Custard",
        "calorie": "1356.77",
        "protein": "66.11",
        "carbo": "35.08",
        "fat": "105.78",
        "portion": "498.48749995232"
        ],
        [
        "name": "Beach Juice",
        "calorie": "94.14",
        "protein": "1.38",
        "carbo": "17.49",
        "fat": "2.07",
        "portion": "365.89037520539"
        ],
        [
        "name": "Salmon Pie/Pate Au Saumon",
        "calorie": "1076.21",
        "protein": "26.62",
        "carbo": "106.04",
        "fat": "60.62",
        "portion": "282.20767447556"
        ],
        [
        "name": "Sweet And Spicy Chinese Five Spice Roasted Almonds",
        "calorie": "467.3",
        "protein": "15.14",
        "carbo": "16.26",
        "fat": "37.97",
        "portion": "76.275000020862"
        ],
        [
        "name": "Pork Piccata",
        "calorie": "130.36",
        "protein": "3.71",
        "carbo": "10.46",
        "fat": "8.18",
        "portion": "164.77812586437"
        ],
        [
        "name": "Elegant Steak",
        "calorie": "298.38",
        "protein": "26.15",
        "carbo": "13.32",
        "fat": "15.61",
        "portion": "304.11897731056"
        ],
        [
        "name": "Chicken And Chickpea Bake",
        "calorie": "841.89",
        "protein": "27.52",
        "carbo": "69.78",
        "fat": "50.3",
        "portion": "347.30737958333"
        ],
        [
        "name": "The Best Stovetop Chicken Breast",
        "calorie": "83.21",
        "protein": "4.25",
        "carbo": "0.92",
        "fat": "6.95",
        "portion": "29.944166758866"
        ],
        [
        "name": "Mushroom Turnovers",
        "calorie": "314.82",
        "protein": "4.26",
        "carbo": "17.8",
        "fat": "25.17",
        "portion": "106.8675528883"
        ],
        [
        "name": "Black Cow",
        "calorie": "129.94",
        "protein": "4.39",
        "carbo": "17.9",
        "fat": "4.53",
        "portion": "245.14285714286"
        ],
        [
        "name": "Grilled Carrots With Carrot Greens Pesto",
        "calorie": "198.23",
        "protein": "0.1",
        "carbo": "0.82",
        "fat": "21.62",
        "portion": "28.749904710054"
        ],
        [
        "name": "No Bake Three Chocolate Cake",
        "calorie": "2178.93",
        "protein": "46.79",
        "carbo": "294",
        "fat": "90.64",
        "portion": "1130.0488884846"
        ],
        [
        "name": "Quinoa Cereal",
        "calorie": "151.96",
        "protein": "7.08",
        "carbo": "28.89",
        "fat": "0.9",
        "portion": "189.93671872366"
        ],
        [
        "name": "Duncan Hines Strawberry Shortcake From A Mix",
        "calorie": "373.32",
        "protein": "10.3",
        "carbo": "54.37",
        "fat": "12.74",
        "portion": "170.33847112413"
        ],
        [
        "name": "Taco Meat",
        "calorie": "234.8",
        "protein": "22.97",
        "carbo": "2.73",
        "fat": "14.67",
        "portion": "136.90538474291"
        ],
        [
        "name": "Creamy Vanilla Ice Cream",
        "calorie": "166.87",
        "protein": "2.59",
        "carbo": "18.79",
        "fat": "9.04",
        "portion": "75.783333410166"
        ],
        [
        "name": "Cherry, Cherry Pie!",
        "calorie": "699.01",
        "protein": "8.64",
        "carbo": "60.8",
        "fat": "46.8",
        "portion": "140.48333425533"
        ],
        [
        "name": "Zucchini Waffle",
        "calorie": "161.37",
        "protein": "7.23",
        "carbo": "21.05",
        "fat": "5.36",
        "portion": "97.80015015015"
        ],
        [
        "name": "Raspberry Lemonade",
        "calorie": "122.11",
        "protein": "0.24",
        "carbo": "29.93",
        "fat": "0.16",
        "portion": "88.496875"
        ],
        [
        "name": "Pig Burger",
        "calorie": "634.82",
        "protein": "29.57",
        "carbo": "5.5",
        "fat": "54.95",
        "portion": "287.89809417725"
        ],
        [
        "name": "Saag Mushrooms | Palak(Spinach) Mushroom Curry",
        "calorie": "154.66",
        "protein": "4.28",
        "carbo": "17.71",
        "fat": "7.41",
        "portion": "172.31106516222"
        ],
        [
        "name": "Vanilla Vanilla Cupcakes",
        "calorie": "244.93",
        "protein": "3.26",
        "carbo": "19.78",
        "fat": "16.98",
        "portion": "86.561765815972"
        ],
        [
        "name": "Mint Tea",
        "calorie": "376.65",
        "protein": "10.02",
        "carbo": "70.15",
        "fat": "6.22",
        "portion": "330.75"
        ],
        [
        "name": "Tea Biscuits",
        "calorie": "111.6",
        "protein": "2.47",
        "carbo": "14.7",
        "fat": "4.77",
        "portion": "35.577222345155"
        ],
        [
        "name": "Meat Pies",
        "calorie": "431.39",
        "protein": "10.14",
        "carbo": "31.92",
        "fat": "29.24",
        "portion": "153.92799479167"
        ],
        [
        "name": "Peanut Butter Turkey Burgers",
        "calorie": "496.28",
        "protein": "45.52",
        "carbo": "35.7",
        "fat": "19.05",
        "portion": "254.69713875"
        ],
        [
        "name": "Best Bread",
        "calorie": "614.9",
        "protein": "5.98",
        "carbo": "64.37",
        "fat": "37.05",
        "portion": "184.31667219865"
        ],
        [
        "name": "Strawberry Yeast Bread",
        "calorie": "79.78",
        "protein": "1.77",
        "carbo": "15.51",
        "fat": "1.18",
        "portion": "57.647281140666"
        ],
        [
        "name": "Sweet Blini",
        "calorie": "332.35",
        "protein": "5.52",
        "carbo": "57.8",
        "fat": "8.78",
        "portion": "134.48541689717"
        ],
        [
        "name": "Greek Chicken Kebab",
        "calorie": "413.75",
        "protein": "27.72",
        "carbo": "29.46",
        "fat": "20.56",
        "portion": "195.82213926862"
        ],
        [
        "name": "Cherry Berry Pie",
        "calorie": "971.67",
        "protein": "12.03",
        "carbo": "116.19",
        "fat": "50.97",
        "portion": "434.09956754744"
        ],
        [
        "name": "Taco Pizza",
        "calorie": "437.02",
        "protein": "31.06",
        "carbo": "43.49",
        "fat": "15.42",
        "portion": "297.62323951721"
        ],
        [
        "name": "Coffee Toffee Crunch Ice Cream",
        "calorie": "1080.03",
        "protein": "11.59",
        "carbo": "110.27",
        "fat": "65.84",
        "portion": "285.517372787"
        ],
        [
        "name": "Syrian Spinach Soup",
        "calorie": "285.55",
        "protein": "7.46",
        "carbo": "40.97",
        "fat": "10.2",
        "portion": "301.32639142857"
        ],
        [
        "name": "Chelo Kebab",
        "calorie": "585.75",
        "protein": "34.27",
        "carbo": "43.57",
        "fat": "30.49",
        "portion": "514.60226619244"
        ],
        [
        "name": "Buttermilk Pie - From Porch Pies - Pies To The Stars",
        "calorie": "314.59",
        "protein": "5.95",
        "carbo": "30.37",
        "fat": "18.81",
        "portion": "135.8343752305"
        ],
        [
        "name": "Potato Yeast Bread",
        "calorie": "111.51",
        "protein": "2.62",
        "carbo": "19.91",
        "fat": "2.38",
        "portion": "39.565625090152"
        ],
        [
        "name": "Coffee House Coffee Cake",
        "calorie": "557.11",
        "protein": "5.74",
        "carbo": "69.37",
        "fat": "28.52",
        "portion": "123.10555563239"
        ],
        [
        "name": "Strawberry Shortcake",
        "calorie": "243.12",
        "protein": "3.02",
        "carbo": "16.13",
        "fat": "18.5",
        "portion": "146.30555534363"
        ],
        [
        "name": "Raspberry Sorbet",
        "calorie": "110.76",
        "protein": "2.37",
        "carbo": "23.63",
        "fat": "0.75",
        "portion": "152.22619047619"
        ],
        [
        "name": "Egg Nog",
        "calorie": "319.33",
        "protein": "7.94",
        "carbo": "39.74",
        "fat": "14.29",
        "portion": "170.77353000641"
        ],
        [
        "name": "Raspberry Margaritas",
        "calorie": "192.06",
        "protein": "3.69",
        "carbo": "34.31",
        "fat": "4.45",
        "portion": "255.2233309375"
        ],
        [
        "name": "Braised Duck Legs And Sautéed Duck Breast",
        "calorie": "271.72",
        "protein": "4.71",
        "carbo": "57.88",
        "fat": "2.37",
        "portion": "674.9647012949"
        ],
        [
        "name": "Kabab (Kebabs Or Middle Eastern Skewers)",
        "calorie": "323.32",
        "protein": "32.48",
        "carbo": "0.53",
        "fat": "21.25",
        "portion": "169.24861172578"
        ],
        [
        "name": "Make-Ahead Mashed/Smashed Potatoes",
        "calorie": "161.96",
        "protein": "3.94",
        "carbo": "10.64",
        "fat": "11.51",
        "portion": "104.27650611111"
        ],
        [
        "name": "Mashed Potatoes",
        "calorie": "132.7",
        "protein": "2.44",
        "carbo": "10.81",
        "fat": "8.85",
        "portion": "71.849371069182"
        ],
        [
        "name": "Vegetable Ramen",
        "calorie": "303.29",
        "protein": "6.98",
        "carbo": "56.89",
        "fat": "5.31",
        "portion": "150.93256576856"
        ],
        [
        "name": "Salmon And Feta Pinwheel Salmon",
        "calorie": "441.4",
        "protein": "35.7",
        "carbo": "5.83",
        "fat": "30.58",
        "portion": "226.45887976396"
        ],
        [
        "name": "Spicy Broccoli",
        "calorie": "71.25",
        "protein": "2.7",
        "carbo": "6.74",
        "fat": "3.72",
        "portion": "97.275"
        ],
        [
        "name": "Armenian Shish Kebab",
        "calorie": "819.44",
        "protein": "64.09",
        "carbo": "53.92",
        "fat": "38.6",
        "portion": "790.7295184774"
        ],
        [
        "name": "Milk Punch",
        "calorie": "455.43",
        "protein": "14.53",
        "carbo": "75.39",
        "fat": "10.64",
        "portion": "440.18247170348"
        ],
        [
        "name": "Zucchini Fries",
        "calorie": "201.72",
        "protein": "29.65",
        "carbo": "17.6",
        "fat": "1.42",
        "portion": "379.23863601685"
        ],
        [
        "name": "No Bake Strawberry Cake",
        "calorie": "115.72",
        "protein": "1.47",
        "carbo": "10.82",
        "fat": "7.39",
        "portion": "98.998366492135"
        ],
        [
        "name": "Chai Tea",
        "calorie": "132.01",
        "protein": "2.5",
        "carbo": "12.22",
        "fat": "8.12",
        "portion": "206.22500601411"
        ],
        [
        "name": "Mixed Berry And Cherry Clafoutis",
        "calorie": "869.67",
        "protein": "17.92",
        "carbo": "167.9",
        "fat": "14.04",
        "portion": "460.76666689717"
        ],
        [
        "name": "Boil Cake - No-Bake Cake",
        "calorie": "770.55",
        "protein": "10.76",
        "carbo": "80.7",
        "fat": "44.97",
        "portion": "211.86446082592"
        ],
        [
        "name": "Fish Stock",
        "calorie": "558.6",
        "protein": "123.67",
        "carbo": "8.26",
        "fat": "3.43",
        "portion": "919.87820732594"
        ],
        [
        "name": "Sushi Poppers",
        "calorie": "68.09",
        "protein": "4.77",
        "carbo": "3.92",
        "fat": "3.7",
        "portion": "43.316919021877"
        ],
        [
        "name": "Spiced Chicken And Chickpea Stew",
        "calorie": "2757.96",
        "protein": "119.99",
        "carbo": "60.61",
        "fat": "226.18",
        "portion": "752.9946206212"
        ],
        [
        "name": "Shrimp Sauce",
        "calorie": "20.25",
        "protein": "0.25",
        "carbo": "4.73",
        "fat": "0.04",
        "portion": "21.646440934381"
        ],
        [
        "name": "Sweet Challah",
        "calorie": "2242.88",
        "protein": "56.46",
        "carbo": "313.25",
        "fat": "84.89",
        "portion": "621.26666943266"
        ],
        [
        "name": "Shrimpin Dippin Broth - Bubba Gump Shrimp Co.",
        "calorie": "208.62",
        "protein": "18.71",
        "carbo": "15.35",
        "fat": "8.04",
        "portion": "268.6841621055"
        ],
        [
        "name": "Strawberry Banana",
        "calorie": "608.9",
        "protein": "47.18",
        "carbo": "85.06",
        "fat": "8.88",
        "portion": "835.5"
        ],
        [
        "name": "Brown Cow Milkshake",
        "calorie": "159.82",
        "protein": "1.56",
        "carbo": "18.38",
        "fat": "8.9",
        "portion": "50"
        ],
        [
        "name": "Yogurt Mousse",
        "calorie": "120.74",
        "protein": "4.11",
        "carbo": "14.1",
        "fat": "5.32",
        "portion": "98.381740252604"
        ],
        [
        "name": "Avocado Fries",
        "calorie": "518.14",
        "protein": "15.01",
        "carbo": "67.18",
        "fat": "21.04",
        "portion": "247.575"
        ],
        [
        "name": "Gypsy Burger",
        "calorie": "347.86",
        "protein": "33.6",
        "carbo": "4.48",
        "fat": "21.73",
        "portion": "259.33142757416"
        ],
        [
        "name": "Pork Stroganoff",
        "calorie": "346.4",
        "protein": "39.83",
        "carbo": "12.85",
        "fat": "15.08",
        "portion": "316.99247589211"
        ],
        [
        "name": "Waffle Cups",
        "calorie": "80.17",
        "protein": "2.61",
        "carbo": "9.74",
        "fat": "3.42",
        "portion": "20.626875"
        ],
        [
        "name": "Salmon Pasta",
        "calorie": "495.11",
        "protein": "31.43",
        "carbo": "5.18",
        "fat": "38.74",
        "portion": "208.58928229167"
        ],
        [
        "name": "Melon Juice",
        "calorie": "78.07",
        "protein": "2.11",
        "carbo": "15.08",
        "fat": "1.03",
        "portion": "114"
        ],
        [
        "name": "Creamy Lemon Ice Cream",
        "calorie": "399.85",
        "protein": "7.41",
        "carbo": "56.02",
        "fat": "16.24",
        "portion": "147.40706766511"
        ],
        [
        "name": "Fruit Smoothie",
        "calorie": "496.69",
        "protein": "9.95",
        "carbo": "64.31",
        "fat": "22.18",
        "portion": "324.25"
        ],
        [
        "name": "Fruit Tarts",
        "calorie": "1172.21",
        "protein": "13.73",
        "carbo": "133.23",
        "fat": "64.93",
        "portion": "335.00207374611"
        ],
        [
        "name": "Sushi Rice",
        "calorie": "447.94",
        "protein": "8.73",
        "carbo": "100.87",
        "fat": "1.06",
        "portion": "159.5"
        ],
        [
        "name": "Green Tomato Sweet Potato Bake",
        "calorie": "112.09",
        "protein": "1.93",
        "carbo": "16.68",
        "fat": "4.18",
        "portion": "151.62222237589"
        ],
        [
        "name": "Zucchini Fries",
        "calorie": "239.41",
        "protein": "10.82",
        "carbo": "27.31",
        "fat": "9.66",
        "portion": "164.8000006915"
        ],
        [
        "name": "Coffee Toffee Muffins",
        "calorie": "229.03",
        "protein": "3.51",
        "carbo": "33.56",
        "fat": "8.97",
        "portion": "73.325000027816"
        ],
        [
        "name": "Blta Burger",
        "calorie": "808.6",
        "protein": "40.68",
        "carbo": "27.25",
        "fat": "59.65",
        "portion": "384.16380633866"
        ],
        [
        "name": "Carrot Hummus",
        "calorie": "108.8",
        "protein": "1.4",
        "carbo": "2.48",
        "fat": "10.36",
        "portion": "22.025000073016"
        ],
        [
        "name": "Mashed Peas",
        "calorie": "126.99",
        "protein": "1.7",
        "carbo": "10.23",
        "fat": "8.81",
        "portion": "48.570674375"
        ],
        [
        "name": "Chocolate Chocolate Cake",
        "calorie": "122.54",
        "protein": "1.52",
        "carbo": "9.08",
        "fat": "8.91",
        "portion": "25.593055593972"
        ],
        [
        "name": "Water Toast",
        "calorie": "307.55",
        "protein": "9.87",
        "carbo": "42.55",
        "fat": "10.87",
        "portion": "182.29375276599"
        ],
        [
        "name": "Carrot Thoran (Carrot Stir Fry)",
        "calorie": "81.47",
        "protein": "3.6",
        "carbo": "8.24",
        "fat": "3.79",
        "portion": "110.37499991804"
        ],
        [
        "name": "Cherry Berry Cobbler",
        "calorie": "736.7",
        "protein": "7.23",
        "carbo": "115.89",
        "fat": "27.14",
        "portion": "349.62291689717"
        ],
        [
        "name": "Egg Flan",
        "calorie": "1001.94",
        "protein": "23.8",
        "carbo": "176.3",
        "fat": "22.39",
        "portion": "338.17329604319"
        ],
        [
        "name": "Mushroom Strudel",
        "calorie": "517.74",
        "protein": "18.3",
        "carbo": "49.68",
        "fat": "27.31",
        "portion": "272.08660135418"
        ],
        [
        "name": "Fruit Tostadas",
        "calorie": "393.27",
        "protein": "7.2",
        "carbo": "27.17",
        "fat": "28.42",
        "portion": "117.875"
        ],
        [
        "name": "Strawberry Milkshake",
        "calorie": "170.96",
        "protein": "4.34",
        "carbo": "28.41",
        "fat": "4.44",
        "portion": "111.05"
        ],
        [
        "name": "Cherry Berry Ginger Smoothie",
        "calorie": "523.29",
        "protein": "7.67",
        "carbo": "67.05",
        "fat": "24.93",
        "portion": "616.975"
        ],
        [
        "name": "No Bake Chocolate Cake",
        "calorie": "154.77",
        "protein": "14.18",
        "carbo": "5.71",
        "fat": "8.36",
        "portion": "39.535475277778"
        ],
        [
        "name": "Waffle Sundaes",
        "calorie": "605.01",
        "protein": "8.42",
        "carbo": "51.87",
        "fat": "40.43",
        "portion": "203.175"
        ],
        [
        "name": "Caesar Burger",
        "calorie": "554.16",
        "protein": "42.09",
        "carbo": "30.33",
        "fat": "29.38",
        "portion": "254.56844043732"
        ],
        [
        "name": "Zucchini Fries",
        "calorie": "887.2",
        "protein": "18.72",
        "carbo": "61.39",
        "fat": "62.97",
        "portion": "305.25"
        ],
        [
        "name": "South-Of-The-Border Burgers",
        "calorie": "83.03",
        "protein": "5.33",
        "carbo": "10.75",
        "fat": "2.08",
        "portion": "52.797678229167"
        ],
        [
        "name": "Sausage Rolls",
        "calorie": "836.15",
        "protein": "35.89",
        "carbo": "106.75",
        "fat": "29.51",
        "portion": "355.72500085831"
        ],
        [
        "name": "Almond Milk",
        "calorie": "310.82",
        "protein": "9.94",
        "carbo": "22.43",
        "fat": "20.15",
        "portion": "129.38888888889"
        ],
        [
        "name": "Tea Biscuits",
        "calorie": "126.13",
        "protein": "5.97",
        "carbo": "6.57",
        "fat": "8.44",
        "portion": "42.347222375888"
        ],
        [
        "name": "Bean’S Burkey Burgers",
        "calorie": "362.66",
        "protein": "45.7",
        "carbo": "5.79",
        "fat": "17.41",
        "portion": "276.45972689717"
        ],
        [
        "name": "Vanilla Cupcake",
        "calorie": "208.04",
        "protein": "3.18",
        "carbo": "23.14",
        "fat": "11.42",
        "portion": "52.472222222222"
        ],
        [
        "name": "Breakfast Burger",
        "calorie": "502.64",
        "protein": "21.7",
        "carbo": "35.83",
        "fat": "30.28",
        "portion": "224.64809417725"
        ],
        [
        "name": "Easy Apple Mini-Pies (Apple Pie)",
        "calorie": "477.05",
        "protein": "7.99",
        "carbo": "93.06",
        "fat": "8.09",
        "portion": "479.70419215625"
        ],
        [
        "name": "Milky Tea",
        "calorie": "1143.43",
        "protein": "24.33",
        "carbo": "201.62",
        "fat": "26.62",
        "portion": "352.33333333333"
        ],
        [
        "name": "Steak Marinade",
        "calorie": "65.31",
        "protein": "9.34",
        "carbo": "2.44",
        "fat": "2.02",
        "portion": "74.3375"
        ],
        [
        "name": "Creme De Menthe Bars",
        "calorie": "17.57",
        "protein": "0.13",
        "carbo": "2.49",
        "fat": "0.79",
        "portion": "3.6899229362607"
        ],
        [
        "name": "Avocado Toast",
        "calorie": "633.51",
        "protein": "15.07",
        "carbo": "106.33",
        "fat": "16.43",
        "portion": "222"
        ],
        [
        "name": "Avocado Pie",
        "calorie": "351.22",
        "protein": "6.16",
        "carbo": "51.25",
        "fat": "13.51",
        "portion": "134.23666546875"
        ],
        [
        "name": "Chicken Shish Kebab",
        "calorie": "1132.49",
        "protein": "60.44",
        "carbo": "84.58",
        "fat": "61.38",
        "portion": "464.75695839524"
        ],
        [
        "name": "Chick-Fil-A Chicken Salad",
        "calorie": "366.07",
        "protein": "13.29",
        "carbo": "58.52",
        "fat": "8.76",
        "portion": "222.20208356383"
        ],
        [
        "name": "Pork Tenderloin With Stilton And Port",
        "calorie": "462.82",
        "protein": "21.42",
        "carbo": "9.86",
        "fat": "37.52",
        "portion": "145.958898125"
        ],
        [
        "name": "Waffle Recipe For Waffle Makers",
        "calorie": "430.35",
        "protein": "14.8",
        "carbo": "46.81",
        "fat": "20.43",
        "portion": "114.90416712766"
        ],
        [
        "name": "Waffle Cones",
        "calorie": "147.92",
        "protein": "2.58",
        "carbo": "25.42",
        "fat": "3.99",
        "portion": "43.922222057978"
        ],
        [
        "name": "Salted Chocolate Dipped Banana Almond Pops With Malted Coconut Honey.",
        "calorie": "868.43",
        "protein": "14.3",
        "carbo": "77.48",
        "fat": "55.7",
        "portion": "186.01611924171"
        ],
        [
        "name": "Grilled Duck Breast",
        "calorie": "254.45",
        "protein": "9.5",
        "carbo": "48.21",
        "fat": "2.62",
        "portion": "301.25000000186"
        ],
        [
        "name": "Italian Crema Ice Cream",
        "calorie": "147.35",
        "protein": "5.04",
        "carbo": "5.01",
        "fat": "11.91",
        "portion": "94.097916618046"
        ],
        [
        "name": "Mediterranean Salmon",
        "calorie": "415.06",
        "protein": "46.55",
        "carbo": "6.34",
        "fat": "22.61",
        "portion": "244.84713875"
        ],
        [
        "name": "Spicy Corn",
        "calorie": "188.08",
        "protein": "4.1",
        "carbo": "30.57",
        "fat": "5.49",
        "portion": "167.57395808213"
        ],
        [
        "name": "Lacto Fermented Ketchup",
        "calorie": "164.81",
        "protein": "7.52",
        "carbo": "33.26",
        "fat": "0.19",
        "portion": "124.32187511525"
        ],
        [
        "name": "Chinese Roast Duck",
        "calorie": "135.4",
        "protein": "1.98",
        "carbo": "28.8",
        "fat": "1.36",
        "portion": "51.630099654198"
        ],
        [
        "name": "Salted Caramel Sauce",
        "calorie": "1632.81",
        "protein": "2.43",
        "carbo": "201.72",
        "fat": "90.69",
        "portion": "346.625"
        ],
        [
        "name": "A 14-Carat Carrot Cake",
        "calorie": "777.93",
        "protein": "10.05",
        "carbo": "84.58",
        "fat": "44.38",
        "portion": "224.88828768104"
        ],
        [
        "name": "Raspberry Lemonade",
        "calorie": "193.54",
        "protein": "1.07",
        "carbo": "46.42",
        "fat": "0.4",
        "portion": "138"
        ],
        [
        "name": "Milk Bread",
        "calorie": "250.3",
        "protein": "7.98",
        "carbo": "39.85",
        "fat": "6.55",
        "portion": "82.598345597656"
        ],
        [
        "name": "Girly-Girl Chicky-Chicken Salad",
        "calorie": "459.65",
        "protein": "18.92",
        "carbo": "2.28",
        "fat": "41.65",
        "portion": "141.13051581597"
        ],
        [
        "name": "Pumpkin Juice",
        "calorie": "65.11",
        "protein": "0.43",
        "carbo": "15.68",
        "fat": "0.08",
        "portion": "358.04317277778"
        ],
        [
        "name": "Mashed Cauliflower",
        "calorie": "195.52",
        "protein": "3.49",
        "carbo": "9.77",
        "fat": "15.83",
        "portion": "193.99358974359"
        ],
        [
        "name": "Easy-Bake Oven Cake Using Commercial Cake Mixes",
        "calorie": "249.84",
        "protein": "3.38",
        "carbo": "42.13",
        "fat": "7.53",
        "portion": "61.65"
        ],
        [
        "name": "No-Bake Chocolate Spartak Cake",
        "calorie": "415.44",
        "protein": "5.42",
        "carbo": "44.56",
        "fat": "23.95",
        "portion": "101.05687059675"
        ],
        [
        "name": "Ramen Breakfast Toast",
        "calorie": "405.85",
        "protein": "14.33",
        "carbo": "39.72",
        "fat": "21.07",
        "portion": "243.5375"
        ],
        [
        "name": "Jungle Juice",
        "calorie": "451.36",
        "protein": "5.93",
        "carbo": "103.01",
        "fat": "1.74",
        "portion": "721.18749983793"
        ],
        [
        "name": "Stewed Eggs ( Stuvade Ägg)",
        "calorie": "854.36",
        "protein": "29.79",
        "carbo": "113.01",
        "fat": "31.46",
        "portion": "315.6875"
        ],
        [
        "name": "Cookies N Cream Dream Cake",
        "calorie": "353.75",
        "protein": "4.44",
        "carbo": "45.4",
        "fat": "17.15",
        "portion": "90.41624471509"
        ],
        [
        "name": "Sausage Stuffing",
        "calorie": "710.8",
        "protein": "31.4",
        "carbo": "11.82",
        "fat": "59.77",
        "portion": "495.37309417874"
        ],
        [
        "name": "Asian Salmon",
        "calorie": "84.29",
        "protein": "8.41",
        "carbo": "10.57",
        "fat": "0.93",
        "portion": "296.625"
        ],
        [
        "name": "Sushi",
        "calorie": "240.48",
        "protein": "7.84",
        "carbo": "44.3",
        "fat": "3.55",
        "portion": "215.02073907852"
        ],
        [
        "name": "Truffes De Chocolat (French Chocolate Truffles)",
        "calorie": "134.26",
        "protein": "2.46",
        "carbo": "12.35",
        "fat": "8.34",
        "portion": "26.710123040489"
        ],
        [
        "name": "Homemade Creme De Menthe",
        "calorie": "816.76",
        "protein": "0.73",
        "carbo": "203.34",
        "fat": "0.06",
        "portion": "400.5"
        ],
        [
        "name": "Chicken & Chick Pea Salad",
        "calorie": "242.09",
        "protein": "18.4",
        "carbo": "21.41",
        "fat": "9.2",
        "portion": "218.22671985626"
        ],
        [
        "name": "Potato & Tomato Gratin",
        "calorie": "536.05",
        "protein": "8.39",
        "carbo": "49.72",
        "fat": "33.74",
        "portion": "463.44332375"
        ],
        [
        "name": "Heart-Shaped Eggs [And Egg Mcmuffin Sandwich!]",
        "calorie": "1298.44",
        "protein": "186.5",
        "carbo": "8.85",
        "fat": "57.45",
        "portion": "917.21354162693"
        ],
        [
        "name": "Milk Rolls",
        "calorie": "223.64",
        "protein": "6.43",
        "carbo": "36.98",
        "fat": "5.55",
        "portion": "81.812542812136"
        ],
        [
        "name": "Bbb Waffle",
        "calorie": "711.33",
        "protein": "25.85",
        "carbo": "30.62",
        "fat": "53.94",
        "portion": "274.92162466049"
        ],
        [
        "name": "Fruit Spread",
        "calorie": "23.15",
        "protein": "1.41",
        "carbo": "3.73",
        "fat": "0.29",
        "portion": "15.916666666667"
        ],
        [
        "name": "Chicken Döner Kebab",
        "calorie": "363",
        "protein": "5.84",
        "carbo": "14.35",
        "fat": "31.36",
        "portion": "236.35809581783"
        ],
        [
        "name": "Strawberry Shortbread",
        "calorie": "1012.98",
        "protein": "8.48",
        "carbo": "123.02",
        "fat": "54.11",
        "portion": "210.82353019714"
        ],
        [
        "name": "Merry Cherry Dessert",
        "calorie": "288.22",
        "protein": "6.04",
        "carbo": "40.16",
        "fat": "11.49",
        "portion": "182.3196105957"
        ],
        [
        "name": "Yuca Fries",
        "calorie": "227.26",
        "protein": "1.76",
        "carbo": "44.21",
        "fat": "4.82",
        "portion": "131.96476008866"
        ],
        [
        "name": "Greek Chicken Kebab",
        "calorie": "551.67",
        "protein": "36.96",
        "carbo": "39.28",
        "fat": "27.41",
        "portion": "261.0961856915"
        ],
        [
        "name": "Carrot Salad",
        "calorie": "77.31",
        "protein": "1.42",
        "carbo": "16.98",
        "fat": "0.41",
        "portion": "164.265"
        ],
        [
        "name": "Bow-Wow Brownies",
        "calorie": "126.46",
        "protein": "2.42",
        "carbo": "11.3",
        "fat": "7.96",
        "portion": "31.206666666667"
        ],
        [
        "name": "Ginger Duck",
        "calorie": "169.79",
        "protein": "6.69",
        "carbo": "34.34",
        "fat": "0.63",
        "portion": "165.32071411458"
        ],
        [
        "name": "Southwest Pizza",
        "calorie": "364.38",
        "protein": "16.02",
        "carbo": "34.37",
        "fat": "18.09",
        "portion": "154.0352846841"
        ],
        [
        "name": "Coffee Toffee",
        "calorie": "1074.23",
        "protein": "6.52",
        "carbo": "93.22",
        "fat": "75.03",
        "portion": "188.0078125"
        ],
        [
        "name": "Sushi Salad",
        "calorie": "150.53",
        "protein": "5.25",
        "carbo": "28.17",
        "fat": "1.87",
        "portion": "96.4"
        ],
        [
        "name": "Strawberry Guava Tropical Cheesecake Bites",
        "calorie": "391.89",
        "protein": "6.23",
        "carbo": "58.35",
        "fat": "14.84",
        "portion": "133.63611110051"
        ],
        [
        "name": "Smoked Salmon",
        "calorie": "35.59",
        "protein": "0.43",
        "carbo": "8.32",
        "fat": "0.07",
        "portion": "22.82"
        ],
        [
        "name": "Fermented Tomatillo Salsa",
        "calorie": "82.77",
        "protein": "2.35",
        "carbo": "14.42",
        "fat": "1.74",
        "portion": "221.73618721189"
        ],
        [
        "name": "Tricolor Burger",
        "calorie": "1241.62",
        "protein": "91.7",
        "carbo": "52.18",
        "fat": "74.02",
        "portion": "545.06701298058"
        ],
        [
        "name": "Aloo Kay Kabab (Potato Kebabs)",
        "calorie": "181.05",
        "protein": "4.09",
        "carbo": "23.75",
        "fat": "7.74",
        "portion": "166.10666740426"
        ],
        [
        "name": "Salad",
        "calorie": "208.92",
        "protein": "5.92",
        "carbo": "34.09",
        "fat": "5.43",
        "portion": "134.19571439177"
        ],
        [
        "name": "Cherry Berry Hand Pies",
        "calorie": "1030.75",
        "protein": "14.18",
        "carbo": "101.14",
        "fat": "63.27",
        "portion": "273.36348044872"
        ],
        [
        "name": "Cow Spot Cookies",
        "calorie": "682.2",
        "protein": "14.66",
        "carbo": "97.31",
        "fat": "26.03",
        "portion": "357.02468208333"
        ],
        [
        "name": "Avocado Cream",
        "calorie": "71.87",
        "protein": "1.2",
        "carbo": "3.94",
        "fat": "5.7",
        "portion": "49.633333333333"
        ],
        [
        "name": "Strawberry-Guava Smoothie",
        "calorie": "293.45",
        "protein": "3.75",
        "carbo": "40.42",
        "fat": "12.97",
        "portion": "229.25"
        ],
        [
        "name": "Coconut Water Mojito",
        "calorie": "365.92",
        "protein": "5.33",
        "carbo": "76.76",
        "fat": "4.17",
        "portion": "198.3980925"
        ],
        [
        "name": "Hot Cereal Breakfast",
        "calorie": "107.56",
        "protein": "3.53",
        "carbo": "19.95",
        "fat": "1.52",
        "portion": "63.111111111111"
        ],
        [
        "name": "Tomato-Potato Salad With Basil",
        "calorie": "158",
        "protein": "3.77",
        "carbo": "27.04",
        "fat": "3.86",
        "portion": "248.25"
        ],
        [
        "name": "Simple Salmon",
        "calorie": "203.69",
        "protein": "38.26",
        "carbo": "1.3",
        "fat": "5.05",
        "portion": "244.57951833333"
        ],
        [
        "name": "Swiss Steak... Scrumptious Swiss Steak",
        "calorie": "178.82",
        "protein": "3.91",
        "carbo": "17.5",
        "fat": "10.35",
        "portion": "158.98217336991"
        ],
        [
        "name": "Detox Tea",
        "calorie": "21.04",
        "protein": "0.38",
        "carbo": "4.81",
        "fat": "0.03",
        "portion": "24.310937447327"
        ],
        [
        "name": "Salted Chocolate Challah",
        "calorie": "861.96",
        "protein": "23.96",
        "carbo": "113.63",
        "fat": "34.62",
        "portion": "232.12083471633"
        ],
        [
        "name": "Sweet Tea",
        "calorie": "68.59",
        "protein": "1.51",
        "carbo": "15.3",
        "fat": "0.15",
        "portion": "85.75"
        ],
        [
        "name": "Salted Eggs",
        "calorie": "499.43",
        "protein": "35.36",
        "carbo": "31.74",
        "fat": "25.67",
        "portion": "210.7977941831"
        ],
        [
        "name": "Easy Creamy Melon Ice Cream",
        "calorie": "120.4",
        "protein": "0.95",
        "carbo": "21.34",
        "fat": "3.47",
        "portion": "50.790000009537"
        ],
        [
        "name": "Strawberry Tabbouleh",
        "calorie": "312.26",
        "protein": "11.04",
        "carbo": "21.76",
        "fat": "20.12",
        "portion": "229.71666672429"
        ],
        [
        "name": "Zucchini With Peppermint (Curcurica Kin Menta)",
        "calorie": "101.85",
        "protein": "3.9",
        "carbo": "7.27",
        "fat": "6.35",
        "portion": "131.54289229711"
        ],
        [
        "name": "Guava Jelly",
        "calorie": "41.82",
        "protein": "1.4",
        "carbo": "7.88",
        "fat": "0.52",
        "portion": "55"
        ],
        [
        "name": "Shrimp Scampi",
        "calorie": "226.7",
        "protein": "26.55",
        "carbo": "3.8",
        "fat": "11.7",
        "portion": "161.7324675"
        ],
        [
        "name": "Strawberry Cow",
        "calorie": "1327.43",
        "protein": "27.93",
        "carbo": "224.4",
        "fat": "35.35",
        "portion": "616"
        ],
        [
        "name": "Shrimp Scampi",
        "calorie": "518.91",
        "protein": "29.61",
        "carbo": "48.44",
        "fat": "22.97",
        "portion": "256.61693041667"
        ],
        [
        "name": "Sausage Bread",
        "calorie": "215.74",
        "protein": "8.85",
        "carbo": "29.16",
        "fat": "7.08",
        "portion": "80.378787994385"
        ],
        [
        "name": "Oriental Duck Salad",
        "calorie": "458.18",
        "protein": "15.98",
        "carbo": "37.23",
        "fat": "27.26",
        "portion": "354.2719003125"
        ],
        [
        "name": "Chickpea, Sweet Potato & Tomato Curry",
        "calorie": "180.07",
        "protein": "3.56",
        "carbo": "33.68",
        "fat": "3.46",
        "portion": "168.05825483054"
        ],
        [
        "name": "Chocolate Chocolate Chocolate Mousse",
        "calorie": "268.33",
        "protein": "3.1",
        "carbo": "44.41",
        "fat": "8.7",
        "portion": "70.282925228278"
        ],
        [
        "name": "Hot-Water Cornbread",
        "calorie": "163.39",
        "protein": "2.91",
        "carbo": "24.68",
        "fat": "5.89",
        "portion": "52.606250576248"
        ],
        [
        "name": "Fruit Scones",
        "calorie": "673.64",
        "protein": "13.5",
        "carbo": "106.58",
        "fat": "21.48",
        "portion": "205.912500922"
        ],
        [
        "name": "Pork Meatballs",
        "calorie": "1166.35",
        "protein": "18.67",
        "carbo": "31.71",
        "fat": "107.21",
        "portion": "277.29501787821"
        ],
        [
        "name": "Mashed “Potatoes”",
        "calorie": "152.17",
        "protein": "4.44",
        "carbo": "11.29",
        "fat": "9.92",
        "portion": "232.41875"
        ],
        [
        "name": "Steak Balmoral",
        "calorie": "409.06",
        "protein": "8.24",
        "carbo": "3.09",
        "fat": "40.41",
        "portion": "190.49770851978"
        ],
        [
        "name": "Creme De Menthe Marshmallows",
        "calorie": "114.54",
        "protein": "2.88",
        "carbo": "25.73",
        "fat": "0.01",
        "portion": "41.000000114441"
        ],
        [
        "name": "Carrot Cake",
        "calorie": "1253.32",
        "protein": "7.14",
        "carbo": "231.35",
        "fat": "33.26",
        "portion": "303.0444445014"
        ],
        [
        "name": "Candy Cane Cake",
        "calorie": "212.79",
        "protein": "0.12",
        "carbo": "52.8",
        "fat": "0.12",
        "portion": "307.29999995232"
        ],
        [
        "name": "Sausage Gravy",
        "calorie": "194.85",
        "protein": "8.44",
        "carbo": "9.22",
        "fat": "13.8",
        "portion": "155.46618979167"
        ],
        [
        "name": "Raspberry Sorbet",
        "calorie": "1350.92",
        "protein": "10.48",
        "carbo": "257.13",
        "fat": "31.17",
        "portion": "312.71666666667"
        ],
        [
        "name": "Tea Muffins",
        "calorie": "237.53",
        "protein": "4.87",
        "carbo": "34.85",
        "fat": "8.74",
        "portion": "63.903703908592"
        ],
        [
        "name": "Vanilla Crepes",
        "calorie": "247.08",
        "protein": "5.37",
        "carbo": "35.24",
        "fat": "9.4",
        "portion": "68.464236264777"
        ],
        [
        "name": "Creamy Vanilla Custard Ice Cream",
        "calorie": "364.89",
        "protein": "5.55",
        "carbo": "44.86",
        "fat": "18.14",
        "portion": "148.25"
        ],
        [
        "name": "Shrimp Scampi",
        "calorie": "658.78",
        "protein": "23.64",
        "carbo": "21.07",
        "fat": "53.33",
        "portion": "313.87213928004"
        ],
        [
        "name": "Un-Fried French Fries",
        "calorie": "127.22",
        "protein": "3.06",
        "carbo": "25.49",
        "fat": "1.45",
        "portion": "127.56475916667"
        ],
        [
        "name": "Carrot Juice",
        "calorie": "6.21",
        "protein": "0.03",
        "carbo": "1.5",
        "fat": "0.01",
        "portion": "4.1499999761581"
        ],
        [
        "name": "Salted Caramel Sauce",
        "calorie": "373.93",
        "protein": "0.61",
        "carbo": "54.8",
        "fat": "16.92",
        "portion": "89.6375"
        ],
        [
        "name": "Salted Shortbread Cookies",
        "calorie": "198.03",
        "protein": "2.14",
        "carbo": "21.16",
        "fat": "11.65",
        "portion": "40.439583794332"
        ],
        [
        "name": "Teriyaki Salmon",
        "calorie": "108.02",
        "protein": "2.31",
        "carbo": "22.13",
        "fat": "1.14",
        "portion": "49.021459579468"
        ],
        [
        "name": "Homemade Yogurt",
        "calorie": "98.36",
        "protein": "5.56",
        "carbo": "13.39",
        "fat": "2.51",
        "portion": "131.5"
        ],
        [
        "name": "Bombay Sandwich - Indian Veg Sandwich",
        "calorie": "754.79",
        "protein": "10.72",
        "carbo": "67.47",
        "fat": "49.11",
        "portion": "440.66666674614"
        ],
        [
        "name": "Tomato, Leek And Potato Bake",
        "calorie": "191.44",
        "protein": "6.48",
        "carbo": "32.52",
        "fat": "3.94",
        "portion": "414.24713875"
        ],
        [
        "name": "Gluten-Free Chewy Cherry Coconut Cookies",
        "calorie": "252.43",
        "protein": "6.49",
        "carbo": "21.35",
        "fat": "15.68",
        "portion": "73.242948717949"
        ],
        [
        "name": "Milk Bread",
        "calorie": "223.4",
        "protein": "8.63",
        "carbo": "31.02",
        "fat": "7.2",
        "portion": "326.07499998808"
        ],
        [
        "name": "Mushroom Melt",
        "calorie": "392.56",
        "protein": "17.9",
        "carbo": "36.75",
        "fat": "19.33",
        "portion": "180.88654625"
        ],
        [
        "name": "Cinnamon Yogurt",
        "calorie": "163.09",
        "protein": "8.61",
        "carbo": "14.18",
        "fat": "7.99",
        "portion": "248.26666666667"
        ],
        [
        "name": "Turmeric Milk",
        "calorie": "176.12",
        "protein": "2.12",
        "carbo": "15.71",
        "fat": "11.64",
        "portion": "318.65411750476"
        ],
        [
        "name": "Chocolate Chocolate Chocolate Bundt Cake",
        "calorie": "606.64",
        "protein": "9.83",
        "carbo": "98.78",
        "fat": "19.13",
        "portion": "150.725"
        ],
        [
        "name": "No-Bake Honey Cake",
        "calorie": "391.76",
        "protein": "12.58",
        "carbo": "14.71",
        "fat": "31.4",
        "portion": "68.696129692925"
        ],
        [
        "name": "Sweet-Sweet Potato Hash",
        "calorie": "376.18",
        "protein": "9.82",
        "carbo": "31.89",
        "fat": "23.26",
        "portion": "214.91142703125"
        ]
        ]
    var i:Int = 0
    meals.forEach { meal in
      i+=1
        
        let cal = Double(meal["calorie"]!)
        let carb = Double(meal["carbo"]!)
        let protein = Double(meal["protein"]!)
        let fat = Double(meal["fat"]!)
        let portion = Double(meal["portion"]!)
        

        MealRepository.shared.add(name: meal["name"]!, cal: cal!, carb: carb!, protein: protein!, fat: fat!, portion: portion!)
//        MealRepository().add(name: meal["name"]!, calories: meal["calorie"]!, carbohydrate: meal["carbo"]!, fat: meal["fat"]!, portion: meal["portion"]!, protein: meal["protein"]!)
//     let insert = MealModel().insertMeal(name: meal["name"]!, calories: meal["calorie"]!, carbohydrate: meal["carbo"]!, fat: meal["fat"]!, portion: meal["portion"]!, protein: meal["protein"]!)
//
//      if(insert.query_status==true){
//        print("New meal inserted")
//      }
    }
    print("Init meals succeess!")
  }

  func truncateAllData(){
    let fetchRequest: NSFetchRequest<NSFetchRequestResult> = NSFetchRequest(entityName: "Meal")
    let deleteRequest = NSBatchDeleteRequest(fetchRequest: fetchRequest)

    do {
      try context.execute(deleteRequest)
    } catch let error as NSError {
        print(error)
    }
  }
}


