String getOrder(String input) {
  List<String> menu=['Burger','Fries','Chicken','Pizza','Sandwich','Onionrings','Milkshake','Coke'];
  List<String> splitted=input.split('');
  List<String> separated=[];
  for(var i=0; i<splitted.length; i++){
    switch(splitted[i]){
      case 'b':
        String item=input.substring(i,i+6);
        String withfirstletterCapitalized=item.substring(0,1).toUpperCase()+item.substring(1);
        separated.add(withfirstletterCapitalized);
        break;
        case 'f':
          String item=input.substring(i,i+5);
          String withfirstletterCapitalized=item.substring(0,1).toUpperCase()+item.substring(1);
        separated.add(withfirstletterCapitalized);
          break;
        case 'c':
          String item=input.substring(i,i+7);
          String withfirstletterCapitalized=item.substring(0,1).toUpperCase()+item.substring(1);
        separated.add(withfirstletterCapitalized);
          break;
        case 'p':
         String item=input.substring(i,i+5);
          String withfirstletterCapitalized=item.substring(0,1).toUpperCase()+item.substring(1);
        separated.add(withfirstletterCapitalized);
          break;
        case 's':
           String item=input.substring(i,i+8);
          String withfirstletterCapitalized=item.substring(0,1).toUpperCase()+item.substring(1);
        separated.add(withfirstletterCapitalized);
          break;
        case 'o':
         String item=input.substring(i,i+10);
          String withfirstletterCapitalized=item.substring(0,1).toUpperCase()+item.substring(1);
        separated.add(withfirstletterCapitalized);
          break;
        case 'm':
          String item=input.substring(i,i+9);
          String withfirstletterCapitalized=item.substring(0,1).toUpperCase()+item.substring(1);
          separated.add(withfirstletterCapitalized);
          break;
    }
  }

List<String> itemsf=[];
for(var i=0; i<separated.length; i++){
  if(menu.contains(separated[i])){
    if(itemsf.contains(separated[i]))continue;
    itemsf.add(separated[i]);
  }
}
print(itemsf);

  return "";
}

void main(){
String menuordered="milkshakepizzachickenfriescokeburgerpizzasandwichmilkshakepizza";
getOrder(menuordered);

}

// Some new cashiers started to work at your restaurant.

// They are good at taking orders, but they don't know how to capitalize words, or use a space bar!

// All the orders they create look something like this:

// "milkshakepizzachickenfriescokeburgerpizzasandwichmilkshakepizza"

// The kitchen staff are threatening to quit, because of how difficult it is to read the orders.

// Their preference is to get the orders as a nice clean string with spaces and capitals like so:

// "Burger Fries Chicken Pizza Pizza Pizza Sandwich Milkshake Milkshake Coke"

// The kitchen staff expect the items to be in the same order as they appear in the menu.

// The menu items are fairly simple, there is no overlap in the names of the items:

// 1. Burger
// 2. Fries
// 3. Chicken
// 4. Pizza
// 5. Sandwich
// 6. Onionrings
// 7. Milkshake
// 8. Coke

// void main() {
//   group("Solution", () {
//     test("Fixed Tests", () {
//       expect(getOrder("milkshakepizzachickenfriescokeburgerpizzasandwichmilkshakepizza"), equals("Burger Fries Chicken Pizza Pizza Pizza Sandwich Milkshake Milkshake Coke"));
//       expect(getOrder("pizzachickenfriesburgercokemilkshakefriessandwich"), equals("Burger Fries Fries Chicken Pizza Sandwich Milkshake Coke"));
//       expect(getOrder("burgerfriesfriesfriesfriesfriespizzasandwichcokefriesburger"), equals("Burger Burger Fries Fries Fries Fries Fries Fries Pizza Sandwich Coke"));
//     });
//   });
// }
