//
//  ContentView.swift
//  arBooks2
//
//  Created by Ardi Rakhmat  on 25/05/23.
//

import SwiftUI
import RealityKit

struct ContentView : View {
    var body: some View {
        NavigationView{
            ScrollView{
                VStack(spacing: 15){
                    HStack {
                        Text("Books")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .padding([.top], 10)
                            .padding([.leading], 30)
                        Spacer()
                    }
                    Divider()
                    HStack {
                        
                        Text("4 books")
                        
                            .padding([.leading], 30)
                            .foregroundColor(Color("systemGrey"))
                        Spacer()
                    }
                    Divider()
                        .padding([.bottom], 27)
                }
                
                VStack(spacing: 22){
                    HStack(spacing: 20){
                        Image ("Dayon")
                        Image ("Sabai")
                        
                    }
                    
                    HStack(spacing: 40){
                        //Dayon View in AR Button
                        HStack{
                            NavigationLink(destination: ARViewContainerDayon().ignoresSafeArea(),label: {
                                HStack{
                                    Image(systemName: "arkit")
                                    Text ("View in AR")
                                }
                            } )
                        }

                        .padding(5)
                        .padding( .trailing, 5)
                        .background(Color("buttonColor"))
                        .foregroundColor(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 7))
                        
                        //Sabai View in AR Button
                        HStack{
                            NavigationLink(destination: ARViewContainerSabai().ignoresSafeArea(),label: {
                                HStack{
                                    Image(systemName: "arkit")
                                    Text ("View in AR")
                                }
                            } )
                        }
                        .padding(5)
                        .padding( .trailing, 5)
                        .background(Color("buttonColor"))
                        .foregroundColor(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 7))
                    }
                    
                    HStack(spacing: 20){
                        Image ("Deliverance")
                        Image ("Siri")
                    }
                    
                    HStack(spacing: 40){
                        //Deliverance View in AR Button
                        HStack{
                            NavigationLink(destination: ARViewContainerDeliverance().ignoresSafeArea(),label: {
                                HStack{
                                    Image(systemName: "arkit")
                                    Text ("View in AR")
                                }
                            } )
                        }

                        .padding(5)
                        .padding( .trailing, 5)
                        .background(Color("buttonColor"))
                        .foregroundColor(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 7))
                        
                        //Siri View in AR Button
                        HStack{
                            NavigationLink(destination: ARViewContainerSiri().ignoresSafeArea(),label: {
                                HStack{
                                    Image(systemName: "arkit")
                                    Text ("View in AR")
                                }
                            } )
                        }
                        .padding(5)
                        .padding( .trailing, 5)
                        .background(Color("buttonColor"))
                        .foregroundColor(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 7))
                    }
                    
                }
                
                
            } //scrollview
        }

    }
}

struct ARViewContainerSiri: UIViewRepresentable {
    
    func makeUIView(context: Context) -> ARView {
        
        let arView = ARView(frame: .zero)
        
        // Load the "Box" scene from the "Experience" Reality File
        let siriAnchor = try! Experience.loadSiri()
        
        // Add the box anchor to the scene
        arView.scene.anchors.append(siriAnchor)
        
        return arView
        
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {}
    
}


struct ARViewContainerDeliverance: UIViewRepresentable {
    
    func makeUIView(context: Context) -> ARView {
        
        let arView = ARView(frame: .zero)
        
        // Load the "Box" scene from the "Experience" Reality File
        let deliveranceAnchor = try! Experience.loadDeliverance()
        
        // Add the box anchor to the scene
        arView.scene.anchors.append(deliveranceAnchor)
        
        return arView
        
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {}
    
}

struct ARViewContainerDayon: UIViewRepresentable {
    
    func makeUIView(context: Context) -> ARView {
        
        let arView = ARView(frame: .zero)
        
        // Load the "Box" scene from the "Experience" Reality File
        let dayonAnchor = try! Experience.loadDayon()
        
        // Add the box anchor to the scene
        arView.scene.anchors.append(dayonAnchor)
        
        return arView
        
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {}
    
}

struct ARViewContainerSabai: UIViewRepresentable {
    
    func makeUIView(context: Context) -> ARView {
        
        let arView = ARView(frame: .zero)
        
        // Load the "Box" scene from the "Experience" Reality File
        let sabaiAnchor = try! Experience.loadSabai()
        
        // Add the box anchor to the scene
        arView.scene.anchors.append(sabaiAnchor)
        
        return arView
        
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {}
    
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
