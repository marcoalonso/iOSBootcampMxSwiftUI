//
//  MultipleLists.swift
//  iOSBootcampSwiftUI
//
//  Created by Marco Alonso Rodriguez on 24/04/23.
//

import SwiftUI

struct MultipleLists: View {
    let fruits = ["Manzana", "Banana", "Kiwi", "Mango", "Fresa","Sandia","Melon","Pepino"]
    let vegetables = ["Zanahoria", "Lechuga", "Pepino", "Espinaca","Jitomate","Calabaza","Chayote"]
    let platillos = ["Enchiladas", "Enmoladas", "Pozole", "Pambazos"]
    
    var body: some View {
        NavigationView {
            ScrollView {
            VStack(alignment: .center) {
                Section(header: Text("Frutas")
                    .frame(maxWidth: .infinity)
                    .padding(.all, 10)
                    .font(.title3)
                    .foregroundColor(.white)
                    .background(Color.brown)
                    .cornerRadius(12)) {
                        
                        List(fruits, id: \.self) { fruit in
                            NavigationLink(destination: MultiDetailView(itemName: fruit, itemType: "Fruta")) {
                                HStack {
                                    Image(systemName: "carrot")
                                    
                                    Text(fruit)
                                        .font(.title)
                                }
                            }
                        }
                        .frame(height: 300)
                        .listStyle(.plain)
                    }
                
                Divider()
                
                Section(header: Text("Verduras")
                    .frame(maxWidth: .infinity)
                    .padding(.all, 10)
                    .font(.title3)
                    .foregroundColor(.white)
                    .background(Color.green)
                        .cornerRadius(12)) {
                            
                    List(vegetables, id: \.self) { vegetable in
                        NavigationLink(destination: MultiDetailView(itemName: vegetable, itemType: "Verdura")) {
                            Text(vegetable)
                                .font(.title)
                        }
                    }
                    .frame(height: 300)
                    .listStyle(.sidebar)
                }///Section
            
                Section(header: Text("Platillos")
                    .frame(maxWidth: .infinity)
                        .padding(.all, 10)
                        .font(.title3)
                        .foregroundColor(.white)
                        .background(Color.red)
                            .cornerRadius(12)) {
                                
                        List(platillos, id: \.self) { platillo in
                            NavigationLink(destination: MultiDetailView(itemName: platillo, itemType: "Platillo")) {
                                
                                
                                HStack {
                                    Image(systemName: "fork.knife.circle")
                                    
                                    Text(platillo)
                                        .font(.title2)
                                }
                                
                                
                                
                               
                                
                            }
                        }
                        .frame(height: 200)
                        .listStyle(.insetGrouped)
                    }///Section
                
                
                
            }.padding(.leading, 20)
                    .padding(.trailing, 20)
                .navigationTitle("Multiples Lists")
        }
        }
    }
}

struct MultipleLists_Previews: PreviewProvider {
    static var previews: some View {
        MultipleLists()
    }
}
