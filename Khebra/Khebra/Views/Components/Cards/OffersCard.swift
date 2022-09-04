//
//  OffersCard.swift
//  Khebra
//
//  Created by Sheheryar on 02/09/2022.
//

import SwiftUI

struct OffersCard: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 0)
            .frame(width: UIScreen.main.bounds.width - 50, height: 160, alignment: .center)
            .overlay(
                ZStack{
                    Image("offer")
                        .resizable()
                        .scaledToFill()
                    VStack{
                        HStack{
                            Spacer()
                            VStack{
                               
                                HStack{
                                    
                                    Image("shareBlack")
                                    Text("Share this offer")
                                        .font(.system(size: 14))
                                        .foregroundColor(Color("fontBlue"))
                                        .fontWeight(.medium)
                                }.padding(10)
                            }.background(RoundedCorners(color: Color("White").opacity(0.5), tl: 0, tr: 0, bl: 5, br: 0))
                               
                        }
                        
                        Spacer()
                        
                        Text("Discounts up to 20% of the service price")
                            .font(.system(size: 16))
                            .foregroundColor(Color("White"))
                            .fontWeight(.medium)
                            
                            .padding(.bottom,10)
                    }
                       
                }
               
            )
    }
}

struct OffersCard_Previews: PreviewProvider {
    static var previews: some View {
        OffersCard()
    }
}

struct RoundedCorners: View {
    var color: Color = .black
    var tl: CGFloat = 0.0
    var tr: CGFloat = 0.0
    var bl: CGFloat = 0.0
    var br: CGFloat = 0.0
    
    var body: some View {
        GeometryReader { geometry in
            Path { path in
                let w = geometry.size.width
                let h = geometry.size.height
                
                // Make sure we do not exceed the size of the rectangle
                let tr = min(min(self.tr, h / 2), w / 2)
                let tl = min(min(self.tl, h / 2), w / 2)
                let bl = min(min(self.bl, h / 2), w / 2)
                let br = min(min(self.br, h / 2), w / 2)
                
                path.move(to: CGPoint(x: w / 2.0, y: 0))
                path.addLine(to: CGPoint(x: w - tr, y: 0))
                path.addArc(center: CGPoint(x: w - tr, y: tr), radius: tr, startAngle: Angle(degrees: -90), endAngle: Angle(degrees: 0), clockwise: false)
                path.addLine(to: CGPoint(x: w, y: h - br))
                path.addArc(center: CGPoint(x: w - br, y: h - br), radius: br, startAngle: Angle(degrees: 0), endAngle: Angle(degrees: 90), clockwise: false)
                path.addLine(to: CGPoint(x: bl, y: h))
                path.addArc(center: CGPoint(x: bl, y: h - bl), radius: bl, startAngle: Angle(degrees: 90), endAngle: Angle(degrees: 180), clockwise: false)
                path.addLine(to: CGPoint(x: 0, y: tl))
                path.addArc(center: CGPoint(x: tl, y: tl), radius: tl, startAngle: Angle(degrees: 180), endAngle: Angle(degrees: 270), clockwise: false)
            }
            .fill(self.color)
        }
    }
}

struct RoundedCornersStroke: View {
    var color: Color = .black
    var tl: CGFloat = 0.0
    var tr: CGFloat = 0.0
    var bl: CGFloat = 0.0
    var br: CGFloat = 0.0
    
    var body: some View {
        GeometryReader { geometry in
            Path { path in
                let w = geometry.size.width
                let h = geometry.size.height
                
                // Make sure we do not exceed the size of the rectangle
                let tr = min(min(self.tr, h / 2), w / 2)
                let tl = min(min(self.tl, h / 2), w / 2)
                let bl = min(min(self.bl, h / 2), w / 2)
                let br = min(min(self.br, h / 2), w / 2)
                
                path.move(to: CGPoint(x: w / 2.0, y: 0))
                path.addLine(to: CGPoint(x: w - tr, y: 0))
                path.addArc(center: CGPoint(x: w - tr, y: tr), radius: tr, startAngle: Angle(degrees: -90), endAngle: Angle(degrees: 0), clockwise: false)
                path.addLine(to: CGPoint(x: w, y: h - br))
                path.addArc(center: CGPoint(x: w - br, y: h - br), radius: br, startAngle: Angle(degrees: 0), endAngle: Angle(degrees: 90), clockwise: false)
                path.addLine(to: CGPoint(x: bl, y: h))
                path.addArc(center: CGPoint(x: bl, y: h - bl), radius: bl, startAngle: Angle(degrees: 90), endAngle: Angle(degrees: 180), clockwise: false)
                path.addLine(to: CGPoint(x: 0, y: tl))
                path.addArc(center: CGPoint(x: tl, y: tl), radius: tl, startAngle: Angle(degrees: 180), endAngle: Angle(degrees: 270), clockwise: false)
            }
            .stroke(self.color, lineWidth: 1)
        }
    }
}
