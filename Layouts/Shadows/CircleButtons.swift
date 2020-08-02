//
//  CircleButtons.swift
//  Layouts
//
//  Created by Niraj on 02/08/2020.
//  Copyright © 2020 Technomystic. All rights reserved.
//

import SwiftUI

struct CircleButtons: View {
    var body: some View {
        VStack(spacing: 30) {
            HStack(spacing: 50) {
                Text("1")
                    .font(.system(size: 20, weight: .semibold, design: .rounded))
                .frame(width: 50, height: 50)
                    .background(
                        ZStack {
                            Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1))

                            Circle()
                                .fill(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                                .blur(radius: 4)
                                .padding(4)

                            Circle()
                                .foregroundColor(Color.white)
                                .blur(radius: 4)
                                .offset(x: -5, y: -5)
                        }
                )
                .clipShape(
                    Circle()
                )
                .shadow(color: Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)), radius: 10, x: 15, y: 15)
                    .shadow(color: Color.white, radius: 10, x: -15, y: -15)

                Text("2")
                    .font(.system(size: 20, weight: .semibold, design: .rounded))
                    .frame(width: 50, height: 50)
                    .background(
                        ZStack {
                            Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1))

                            Circle()
                                .fill(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                                .blur(radius: 4)
                                .padding(4)

                            Circle()
                                .foregroundColor(Color.white)
                                .blur(radius: 4)
                                .offset(x: -5, y: -5)
                        }
                )
                    .clipShape(
                        Circle()
                )
                    .shadow(color: Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)), radius: 10, x: 15, y: 15)
                    .shadow(color: Color.white, radius: 10, x: -15, y: -15)

                Text("3")
                    .font(.system(size: 20, weight: .semibold, design: .rounded))
                    .frame(width: 50, height: 50)
                    .background(
                        ZStack {
                            Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1))

                            Circle()
                                .fill(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                                .blur(radius: 4)
                                .padding(4)

                            Circle()
                                .foregroundColor(Color.white)
                                .blur(radius: 4)
                                .offset(x: -5, y: -5)
                        }
                )
                    .clipShape(
                        Circle()
                )
                    .shadow(color: Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)), radius: 10, x: 15, y: 15)
                    .shadow(color: Color.white, radius: 10, x: -15, y: -15)
            }

            HStack(spacing: 50) {
                Text("4")
                    .font(.system(size: 20, weight: .semibold, design: .rounded))
                    .frame(width: 50, height: 50)
                    .background(
                        ZStack {
                            Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1))

                            Circle()
                                .fill(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                                .blur(radius: 4)
                                .padding(4)

                            Circle()
                                .foregroundColor(Color.white)
                                .blur(radius: 4)
                                .offset(x: -5, y: -5)
                        }
                )
                    .clipShape(
                        Circle()
                )
                    .shadow(color: Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)), radius: 10, x: 15, y: 15)
                    .shadow(color: Color.white, radius: 10, x: -15, y: -15)

                Text("5")
                    .font(.system(size: 20, weight: .semibold, design: .rounded))
                    .frame(width: 50, height: 50)
                    .background(
                        ZStack {
                            Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1))

                            Circle()
                                .fill(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                                .blur(radius: 4)
                                .padding(4)

                            Circle()
                                .foregroundColor(Color.white)
                                .blur(radius: 4)
                                .offset(x: -5, y: -5)
                        }
                )
                    .clipShape(
                        Circle()
                )
                    .shadow(color: Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)), radius: 10, x: 15, y: 15)
                    .shadow(color: Color.white, radius: 10, x: -15, y: -15)

                Text("6")
                    .font(.system(size: 20, weight: .semibold, design: .rounded))
                    .frame(width: 50, height: 50)
                    .background(
                        ZStack {
                            Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1))

                            Circle()
                                .fill(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                                .blur(radius: 4)
                                .padding(4)

                            Circle()
                                .foregroundColor(Color.white)
                                .blur(radius: 4)
                                .offset(x: -5, y: -5)
                        }
                )
                    .clipShape(
                        Circle()
                )
                    .shadow(color: Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)), radius: 10, x: 15, y: 15)
                    .shadow(color: Color.white, radius: 10, x: -15, y: -15)
            }

            HStack(spacing: 50) {
                Text("7")
                    .font(.system(size: 20, weight: .semibold, design: .rounded))
                    .frame(width: 50, height: 50)
                    .background(
                        ZStack {
                            Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1))

                            Circle()
                                .fill(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                                .blur(radius: 4)
                                .padding(4)

                            Circle()
                                .foregroundColor(Color.white)
                                .blur(radius: 4)
                                .offset(x: -5, y: -5)
                        }
                )
                    .clipShape(
                        Circle()
                )
                    .shadow(color: Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)), radius: 10, x: 15, y: 15)
                    .shadow(color: Color.white, radius: 10, x: -15, y: -15)

                Text("8")
                    .font(.system(size: 20, weight: .semibold, design: .rounded))
                    .frame(width: 50, height: 50)
                    .background(
                        ZStack {
                            Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1))

                            Circle()
                                .fill(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                                .blur(radius: 4)
                                .padding(4)

                            Circle()
                                .foregroundColor(Color.white)
                                .blur(radius: 4)
                                .offset(x: -5, y: -5)
                        }
                )
                    .clipShape(
                        Circle()
                )
                    .shadow(color: Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)), radius: 10, x: 15, y: 15)
                    .shadow(color: Color.white, radius: 10, x: -15, y: -15)

                Text("9")
                    .font(.system(size: 20, weight: .semibold, design: .rounded))
                    .frame(width: 50, height: 50)
                    .background(
                        ZStack {
                            Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1))

                            Circle()
                                .fill(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                                .blur(radius: 4)
                                .padding(4)

                            Circle()
                                .foregroundColor(Color.white)
                                .blur(radius: 4)
                                .offset(x: -5, y: -5)
                        }
                )
                    .clipShape(
                        Circle()
                )
                    .shadow(color: Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)), radius: 10, x: 15, y: 15)
                    .shadow(color: Color.white, radius: 10, x: -15, y: -15)
            }

            HStack(spacing: 50) {
                Text("+")
                    .font(.system(size: 20, weight: .semibold, design: .rounded))
                    .frame(width: 50, height: 50)
                    .background(
                        ZStack {
                            Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1))

                            Circle()
                                .fill(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                                .blur(radius: 4)
                                .padding(4)

                            Circle()
                                .foregroundColor(Color.white)
                                .blur(radius: 4)
                                .offset(x: -5, y: -5)
                        }
                )
                    .clipShape(
                        Circle()
                )
                    .shadow(color: Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)), radius: 10, x: 15, y: 15)
                    .shadow(color: Color.white, radius: 10, x: -15, y: -15)

                Text("0")
                    .font(.system(size: 20, weight: .semibold, design: .rounded))
                    .frame(width: 50, height: 50)
                    .background(
                        ZStack {
                            Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1))

                            Circle()
                                .fill(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                                .blur(radius: 4)
                                .padding(4)

                            Circle()
                                .foregroundColor(Color.white)
                                .blur(radius: 4)
                                .offset(x: -5, y: -5)
                        }
                )
                    .clipShape(
                        Circle()
                )
                    .shadow(color: Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)), radius: 10, x: 15, y: 15)
                    .shadow(color: Color.white, radius: 10, x: -15, y: -15)

                Text("*")
                    .font(.system(size: 20, weight: .semibold, design: .rounded))
                    .frame(width: 50, height: 50)
                    .background(
                        ZStack {
                            Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1))

                            Circle()
                                .fill(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                                .blur(radius: 4)
                                .padding(4)

                            Circle()
                                .foregroundColor(Color.white)
                                .blur(radius: 4)
                                .offset(x: -5, y: -5)
                        }
                )
                    .clipShape(
                        Circle()
                )
                    .shadow(color: Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)), radius: 10, x: 15, y: 15)
                    .shadow(color: Color.white, radius: 10, x: -15, y: -15)
            }

        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(.clear))
        .edgesIgnoringSafeArea(.all)
    }
}

struct CircleButtons_Previews: PreviewProvider {
    static var previews: some View {
        CircleButtons()
    }
}
