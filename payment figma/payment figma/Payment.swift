//
//  Payment.swift
//  payment figma
//
//  Created by Mihael Koic on 04.03.2025..
//
import SwiftUI

struct Payment: View {
    @State private var selectedPlan: String? = "Mijesecni"
    let monthlyPrice: Double = 9.99
    let yearlyPrice: Double = 99.99
    
    var body: some View {
        NavigationStack {
            
            Spacer()
            
            Text("Get App+")
                .offset(x: 0, y: -120)
                .bold()
                .font(.system(size: 25))
            
            HStack {
                Image(systemName: "message")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .foregroundColor(.blue)
                
                VStack(alignment: .leading) {
                    Text("Message")
                        .font(.system(size: 17, weight: .medium))
                        .padding(.bottom, 2)
                    
                    Text("Get access to exclusive features and discounts")
                        .font(.system(size: 14, weight: .light))
                        
                }
                .padding(.leading, 00)
            }
            .offset(x: 0, y: -99)
            
            HStack {
                Image(systemName: "pencil")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .foregroundColor(.blue)
                
                VStack(alignment: .leading) {
                    Text("Edit Messages")
                        .font(.system(size: 17, weight: .medium))
                        .padding(.bottom, 2)
                    
                    Text("Get access to exclusive features and discounts")
                        .font(.system(size: 14, weight: .light))
                        
                }
                .padding(.leading, 10)
            }
            .offset(x: 0, y: -80)
            
            HStack {
                Image(systemName: "map")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .foregroundColor(.blue)
                
                VStack(alignment: .leading) {
                    Text("Map")
                        .font(.system(size: 17, weight: .medium))
                        .padding(.bottom, 2)
                    
                    Text("Get access to exclusive features and discounts")
                        .font(.system(size: 14, weight: .light))
                        
                }
                .padding(.leading, 10)
            }
            .offset(x: 0, y: -50)
                
            // Kartice s placanjem
            
            Spacer()
                .frame(height: 10)
            
            VStack {
                Button(action: {
                    selectedPlan = "Mijesecni"
                }) {
                    HStack{
                        VStack(alignment: .leading){
                            Text("Mijesecni")
                                .bold()
                                .font(.system(size: 15))
                                .foregroundColor(.primary)
                            
                            
                            Text("30 dana free")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                        
                        
                        Spacer()
                        
                        VStack(alignment: .trailing){
                            
                            Text("€ \(monthlyPrice, specifier: "%.2f") Month")
                                .font(.system(size: 20))
                                .bold()
                                .foregroundColor(.primary)
                            
                            Text("€ \(monthlyPrice * 12, specifier: "%.2f") /Year")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 16)
                            .stroke(selectedPlan == "Mijesecni" ? Color.blue : Color.gray, lineWidth: 3)
                            .padding()
                    )
                    .shadow(radius: 5)
                }
                
                // kartica za godisnji plan
                Button(action: {
                    selectedPlan = "Godisnji"
                }){
                    HStack{
                        VStack{
                            Text("Godisnji")
                                .font(.system(size: 15))
                                .bold()
                                .foregroundColor(.primary)
                                .padding(.leading, -46)
                            
                            Text("Cancel anytime")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                                .padding(.leading, 1)
                            
                        }
                        
                        Spacer()
                        
                        VStack(alignment: .trailing){
                            Text("€ \(yearlyPrice, specifier: "%.2f") Year")
                                .font(.system(size: 20))
                                .foregroundColor(.primary)
                                .bold()
                            
                            Text("€ \(yearlyPrice / 12, specifier: "%.2f")/Month")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 16)
                            .stroke(selectedPlan == "Godisnji" ? Color.blue : Color.gray, lineWidth: 3)
                            .padding()
                    )
                    .shadow(radius: 5)
                }
                .offset(x: 0, y: -20)
                
                
                // gum za placanje
                Button(action: {
                    
                }) {
                    Text("Subscribe")
                        .font(.headline)
                        .foregroundColor(.primary)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                .padding()
                
                Text("Payments are charged in USD. Payment provider fees may apply. Plan automatically renews until cancelled.")
                    .font(.system(size: 12))
                    .padding(.horizontal)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.center)
            }
            .offset(x: 0, y: -10)
            
                        
            
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Skip") {
                        
                    }
                    .bold()
                }
            }
        }
    }
}

#Preview {
    Payment()
}

