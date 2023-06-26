 
// New Cashier Does Not Know About Space or Shift
 void categories(String input,List<String> items, int i, int n){
        String item=input.substring(i,n);
        String withfirstletterCapitalized=item.substring(0,1).toUpperCase()+item.substring(1);
        items.add(withfirstletterCapitalized);
  }

String getOrder(String input) {
  List<String> menu=['Burger','Fries','Chicken','Pizza','Sandwich','Onionrings','Milkshake','Coke'];
  List<String> splitted=input.split('');
  List<String> separated=[];
  for(var i=0; i<splitted.length; i++){
     String word=splitted[i]+splitted[i+1];
    switch(word){
      case 'bu':
        categories(input, separated, i, i+6);
        break;
        case 'fr':
        categories(input, separated, i, i+5);
          break;
        case 'ch':
        categories(input, separated, i, i+7);
          break;
        case 'co':
        categories(input, separated, i, i+4);
          break;
        case 'pi':
        categories(input, separated, i, i+5);
          break;
        case 'sa':
        categories(input, separated, i, i+8);
          break;
        case 'on':
        categories(input, separated, i, i+10);
          break;
        case 'mi':
        categories(input, separated, i, i+9);
          break;
    }
    if(i==splitted.length-3) break;
  }

List<String> order=separated.where((item) => menu.contains(item)).toList();
List itemsOrdered=[];
menu.forEach((e) { 
  List<String> items=order.where((element) => e==element).toList();
  if(!items.isEmpty){
    itemsOrdered.add(items.join(' '));
  }
});
  return itemsOrdered.join(' ').replaceAll('  ', ' ');
}

void main(){
String menuordered="milkshakepizzachickenfriescokeburgerpizzasandwichmilkshakepizza";
print(getOrder(menuordered));

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
