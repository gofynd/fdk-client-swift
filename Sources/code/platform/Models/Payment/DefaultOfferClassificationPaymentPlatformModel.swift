

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: DefaultOfferClassification
        Used By: Payment
    */

    class DefaultOfferClassification: Codable {
        
        
        public var aggregator: String
        
        public var defaultOfferType: String
        

        public enum CodingKeys: String, CodingKey {
            
            case aggregator = "aggregator"
            
            case defaultOfferType = "default_offer_type"
            
        }

        public init(aggregator: String, defaultOfferType: String) {
            
            self.aggregator = aggregator
            
            self.defaultOfferType = defaultOfferType
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
            
            
            
                defaultOfferType = try container.decode(String.self, forKey: .defaultOfferType)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            
            
            
            try? container.encodeIfPresent(defaultOfferType, forKey: .defaultOfferType)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: DefaultOfferClassification
        Used By: Payment
    */

    class DefaultOfferClassification: Codable {
        
        
        public var aggregator: String
        
        public var defaultOfferType: String
        

        public enum CodingKeys: String, CodingKey {
            
            case aggregator = "aggregator"
            
            case defaultOfferType = "default_offer_type"
            
        }

        public init(aggregator: String, defaultOfferType: String) {
            
            self.aggregator = aggregator
            
            self.defaultOfferType = defaultOfferType
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
            
            
            
                defaultOfferType = try container.decode(String.self, forKey: .defaultOfferType)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            
            
            
            try? container.encodeIfPresent(defaultOfferType, forKey: .defaultOfferType)
            
            
        }
        
    }
}


