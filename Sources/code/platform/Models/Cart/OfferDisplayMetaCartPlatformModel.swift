

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: OfferDisplayMeta
        Used By: Cart
    */

    class OfferDisplayMeta: Codable {
        
        
        public var description: String
        
        public var isDisplay: Bool?
        
        public var isPublic: Bool?
        
        public var name: String
        
        public var offerText: String?
        
        public var offerLabel: String?
        
        public var reason: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case description = "description"
            
            case isDisplay = "is_display"
            
            case isPublic = "is_public"
            
            case name = "name"
            
            case offerText = "offer_text"
            
            case offerLabel = "offer_label"
            
            case reason = "reason"
            
        }

        public init(description: String, isDisplay: Bool? = nil, isPublic: Bool? = nil, name: String, offerLabel: String? = nil, offerText: String? = nil, reason: String? = nil) {
            
            self.description = description
            
            self.isDisplay = isDisplay
            
            self.isPublic = isPublic
            
            self.name = name
            
            self.offerText = offerText
            
            self.offerLabel = offerLabel
            
            self.reason = reason
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                description = try container.decode(String.self, forKey: .description)
                
            
            
            
                do {
                    isDisplay = try container.decode(Bool.self, forKey: .isDisplay)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isPublic = try container.decode(Bool.self, forKey: .isPublic)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                do {
                    offerText = try container.decode(String.self, forKey: .offerText)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    offerLabel = try container.decode(String.self, forKey: .offerLabel)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    reason = try container.decode(String.self, forKey: .reason)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(isDisplay, forKey: .isDisplay)
            
            
            
            
            try? container.encodeIfPresent(isPublic, forKey: .isPublic)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(offerText, forKey: .offerText)
            
            
            
            
            try? container.encodeIfPresent(offerLabel, forKey: .offerLabel)
            
            
            
            
            try? container.encodeIfPresent(reason, forKey: .reason)
            
            
        }
        
    }
}


