

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: PlatformShipmentsRequestSchema
        Used By: Serviceability
    */

    class PlatformShipmentsRequestSchema: Codable {
        
        
        public var journey: String
        
        public var locationArticles: [PlatformLocationArticles]
        
        public var toServiceability: PlatformShipmentsToServiceability
        
        public var paymentMode: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case journey = "journey"
            
            case locationArticles = "location_articles"
            
            case toServiceability = "to_serviceability"
            
            case paymentMode = "payment_mode"
            
        }

        public init(journey: String, locationArticles: [PlatformLocationArticles], paymentMode: String? = nil, toServiceability: PlatformShipmentsToServiceability) {
            
            self.journey = journey
            
            self.locationArticles = locationArticles
            
            self.toServiceability = toServiceability
            
            self.paymentMode = paymentMode
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                journey = try container.decode(String.self, forKey: .journey)
                
            
            
            
                locationArticles = try container.decode([PlatformLocationArticles].self, forKey: .locationArticles)
                
            
            
            
                toServiceability = try container.decode(PlatformShipmentsToServiceability.self, forKey: .toServiceability)
                
            
            
            
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
            
            
            
            try? container.encodeIfPresent(journey, forKey: .journey)
            
            
            
            
            try? container.encodeIfPresent(locationArticles, forKey: .locationArticles)
            
            
            
            
            try? container.encodeIfPresent(toServiceability, forKey: .toServiceability)
            
            
            
            
            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: PlatformShipmentsRequestSchema
        Used By: Serviceability
    */

    class PlatformShipmentsRequestSchema: Codable {
        
        
        public var journey: String
        
        public var locationArticles: [PlatformLocationArticles]
        
        public var toServiceability: PlatformShipmentsToServiceability
        
        public var paymentMode: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case journey = "journey"
            
            case locationArticles = "location_articles"
            
            case toServiceability = "to_serviceability"
            
            case paymentMode = "payment_mode"
            
        }

        public init(journey: String, locationArticles: [PlatformLocationArticles], paymentMode: String? = nil, toServiceability: PlatformShipmentsToServiceability) {
            
            self.journey = journey
            
            self.locationArticles = locationArticles
            
            self.toServiceability = toServiceability
            
            self.paymentMode = paymentMode
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                journey = try container.decode(String.self, forKey: .journey)
                
            
            
            
                locationArticles = try container.decode([PlatformLocationArticles].self, forKey: .locationArticles)
                
            
            
            
                toServiceability = try container.decode(PlatformShipmentsToServiceability.self, forKey: .toServiceability)
                
            
            
            
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
            
            
            
            try? container.encodeIfPresent(journey, forKey: .journey)
            
            
            
            
            try? container.encodeIfPresent(locationArticles, forKey: .locationArticles)
            
            
            
            
            try? container.encodeIfPresent(toServiceability, forKey: .toServiceability)
            
            
            
            
            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
            
            
        }
        
    }
}


