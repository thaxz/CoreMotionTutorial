//
//  HomeView.swift
//  CoreMotionTutorial
//
//  Created by thaxz on 14/05/23.
//

import SwiftUI

struct HomeView: View {
    // Create an instance of SensorViewModel
    @ObservedObject var viewModel = HomeViewModel()
    
    var body: some View {
        ZStack {
            Color.primary
                .ignoresSafeArea()
            VStack {
                Text("Gravity: \(viewModel.accelerationValue) ")
                    .font(.system(size: 24, weight: .bold))
                    .foregroundColor(.white)
                
                Spacer()
                HStack(spacing: 24){
                    Button {
                        viewModel.stopUpdates()
                    } label: {
                        Text("Stop Updates")
                            .font(.system(size: 17, weight: .bold))
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .frame(height: 42)
                            .background(
                                RoundedRectangle(cornerRadius: 8)
                                    .fill(Color.secondary)
                            )
                    }
                    Button {
                        viewModel.startFetchingSensorData()
                    } label: {
                        Text("Start Updates")
                            .font(.system(size: 17, weight: .bold))
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .frame(height: 42)
                            .background(
                                RoundedRectangle(cornerRadius: 8)
                                    .fill(Color.orange)
                            )
                    }
                }
                Spacer()
            }
            .padding()
        }
    }
}

//Text("User Acceleration:").bold() + Text(" \(viewModel.userAcceleration)")
//
//Text("Gravity:").bold() + Text(" \(viewModel.gravity)")
//
//Text("Rotation Rate:").bold() + Text(" \(viewModel.rotationRate)")

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
