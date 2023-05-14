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
            VStack(alignment: .leading, spacing: 24){
                Spacer()
                Text("Gravity")
                    .font(.system(size: 24, weight: .bold))
                    .foregroundColor(.white)
                Text(viewModel.accelerationValue)
                    .font(.system(size: 20, weight: .regular))
                    .foregroundColor(.white)
                Text("Acceleration")
                    .font(.system(size: 24, weight: .bold))
                    .foregroundColor(.white)
                Text(viewModel.gravityValue)
                    .font(.system(size: 20, weight: .regular))
                    .foregroundColor(.white)
                Text("Rotation")
                    .font(.system(size: 24, weight: .bold))
                    .foregroundColor(.white)
                Text(viewModel.rotationValue)
                    .font(.system(size: 20, weight: .regular))
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
                        viewModel.startUpdates()
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

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
