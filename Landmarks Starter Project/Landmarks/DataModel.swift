//
//  DataModel.swift
//  Landmarks
//
//  Created by Probeer on 12/01/26.
//

import Foundation

class DataModel {
    static let landmarks: [Landmark] = [
        Landmark(
            name: "India Gate",
            about: "The India Gate (formerly known as All India War Memorial) is a war memorial located near the Rajpath (officially called Kartavya Path) on the eastern edge of the ceremonial axis of New Delhi. It stands as a memorial to 74,187 soldiers of the Indian Army who died between 1914 and 1921 in the First World War, in France, Flanders, Mesopotamia, Persia, East Africa, Gallipoli and elsewhere in the Near and the Far East, and the Third Anglo-Afghan War. 13,300 servicemen's names, including some soldiers and officers from the United Kingdom, are inscribed on the gate. Designed by Edwin Lutyens, the gate evokes the architectural style of the ancient Roman triumphal arches, such as the Arch of Constantine in Rome, and later memorial arches; it is often compared to the Arc de Triomphe in Paris, and the Gateway of India in Mumbai.",
            imageName: "indiaGate",
            amenities: [
                Amenity(name: .parking, imageName: "car"),
                Amenity(name: .publicToilet, imageName: "toilet"),
                Amenity(name: .foodAndDrink, imageName: "fork.knife")
            ]
        ),
        
        Landmark(
            name: "Akshardham Temple",
            about: "Swaminarayan Akshardham is a Hindu temple and spiritual-cultural campus in Delhi, India. The temple is close to the border with Noida. Also referred to as Akshardham Temple or Akshardham Delhi, the complex displays millennia of traditional and modern Hindu culture, spirituality, and architecture. Inspired by Yogiji Maharaj and created by Pramukh Swami Maharaj, it was constructed by BAPS. The temple was officially opened on 6 November 2005 by Pramukh Swami Maharaj in the presence of APJ Abdul Kalam, Manmohan Singh, and LK Advani.",
            imageName: "akshardham",
            amenities: [
                Amenity(name: .parking, imageName: "car"),
                Amenity(name: .publicToilet, imageName: "toilet"),
                Amenity(name: .foodAndDrink, imageName: "fork.knife")
            ]
        ),
        
        Landmark(
            name: "Lotus Temple",
            about: "The Lotus Temple, located in Delhi, India, is a Baháʼí House of Worship that was dedicated in December 1986. Notable for its flowerlike shape, it has become a prominent attraction in the city. Like all Bahá'í Houses of Worship, the Lotus Temple is open to all, regardless of religion or any other qualification. The building is composed of 27 free-standing marble-clad petals arranged in clusters of three to form nine sides, with nine doors opening onto a central hall. It has won numerous architectural awards and has been featured in many newspaper and magazine articles.",
            imageName: "lotusTemple",
            amenities: [
                Amenity(name: .parking, imageName: "car"),
                Amenity(name: .publicToilet, imageName: "toilet")
            ]
        ),
        
        Landmark(
            name: "Red Fort",
            about: "The Red Fort, also known as Lal Qila, is a historic fort in Old Delhi that served as the main residence of the Mughal emperors for nearly 200 years. Built by Emperor Shah Jahan in 1648 when he shifted his capital from Agra to Delhi, the fort is named for its massive enclosing walls of red sandstone. The fort complex showcases the pinnacle of Mughal creativity which, under Shah Jahan, brought together architectural traditions from Islamic, Persian, Timurid, and Hindu architectural styles. The fort's planning and aesthetics represent the zenith of Mughal architecture. It was designated a UNESCO World Heritage Site in 2007 and remains an important symbol of India's sovereignty, with the Prime Minister hoisting the national flag here every Independence Day.",
            imageName: "redFort",
            amenities: [
                Amenity(name: .parking, imageName: "car"),
                Amenity(name: .publicToilet, imageName: "toilet"),
                Amenity(name: .foodAndDrink, imageName: "fork.knife")
            ]
        ),
        
        Landmark(
            name: "National Rail Museum",
            about: "The National Rail Museum in New Delhi displays exhibits on the history of rail transport in India. The museum was inaugurated on 7 February 1977 and spans over 11 acres. The museum has both indoor and outdoor exhibits, featuring over 100 real-size exhibits of trains, carriages, and railway equipment. Highlights include the Fairy Queen, the world's oldest working steam locomotive, and the Patiala State Monorail Trainway. The museum also features interactive displays, a toy train ride, and a steam locomotive simulator.",
            imageName: "railMuseum",
            amenities: [
                Amenity(name: .parking, imageName: "car"),
                Amenity(name: .foodAndDrink, imageName: "fork.knife")
            ]
        )
    ]
}
