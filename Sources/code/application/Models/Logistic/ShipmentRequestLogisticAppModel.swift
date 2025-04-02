

import Foundation
public extension ApplicationClient.Logistic {
    /*
        Model: ShipmentRequest
        Used By: Logistic
    */
    class ShipmentRequest: Codable {
        
        public var toServiceability: ServiceabilityNew?
        
        public var locationArticles: [LocationArticle]?
        
        public var journey: String?
        
        public var paymentMode: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case toServiceability = "to_serviceability"
            
            case locationArticles = "location_articles"
            
            case journey = "journey"
            
            case paymentMode = "payment_mode"
            
        }

        public init(journey: String? = nil, locationArticles: [LocationArticle]? = nil, paymentMode: String? = nil, toServiceability: ServiceabilityNew? = nil) {
            
            self.toServiceability = toServiceability
            
            self.locationArticles = locationArticles
            
            self.journey = journey
            
            self.paymentMode = paymentMode
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                toServiceability = try container.decode(ServiceabilityNew.self, forKey: .toServiceability)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                locationArticles = try container.decode([LocationArticle].self, forKey: .locationArticles)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                journey = try container.decode(String.self, forKey: .journey)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
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
