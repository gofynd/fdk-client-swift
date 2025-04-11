

import Foundation
public extension ApplicationClient.Logistic {
    /*
        Model: GenerateShipmentsRequestSchema
        Used By: Logistic
    */
    class GenerateShipmentsRequestSchema: Codable {
        
        public var toServiceability: LocationDetailsServiceability
        
        public var locationArticles: [GenerateShipmentsLocationArticles]
        
        public var journey: String
        
        public var paymentMode: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case toServiceability = "to_serviceability"
            
            case locationArticles = "location_articles"
            
            case journey = "journey"
            
            case paymentMode = "payment_mode"
            
        }

        public init(journey: String, locationArticles: [GenerateShipmentsLocationArticles], paymentMode: String? = nil, toServiceability: LocationDetailsServiceability) {
            
            self.toServiceability = toServiceability
            
            self.locationArticles = locationArticles
            
            self.journey = journey
            
            self.paymentMode = paymentMode
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            toServiceability = try container.decode(LocationDetailsServiceability.self, forKey: .toServiceability)
            
            
            
            
            locationArticles = try container.decode([GenerateShipmentsLocationArticles].self, forKey: .locationArticles)
            
            
            
            
            journey = try container.decode(String.self, forKey: .journey)
            
            
            
            
            do {
                paymentMode = try container.decode(String.self, forKey: .paymentMode)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(toServiceability, forKey: .toServiceability)
            
            
            
            try? container.encodeIfPresent(locationArticles, forKey: .locationArticles)
            
            
            
            try? container.encodeIfPresent(journey, forKey: .journey)
            
            
            
            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
            
            
        }
        
    }
}
