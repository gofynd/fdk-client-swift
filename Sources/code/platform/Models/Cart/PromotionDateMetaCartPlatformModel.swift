

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: PromotionDateMeta
        Used By: Cart
    */

    class PromotionDateMeta: Codable {
        
        
        public var modifiedOn: String?
        
        public var createdOn: String?
        
        public var approvedOn: String?
        
        public var rejectedOn: String?
        
        public var reviewedOn: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case modifiedOn = "modified_on"
            
            case createdOn = "created_on"
            
            case approvedOn = "approved_on"
            
            case rejectedOn = "rejected_on"
            
            case reviewedOn = "reviewed_on"
            
        }

        public init(approvedOn: String? = nil, createdOn: String? = nil, modifiedOn: String? = nil, rejectedOn: String? = nil, reviewedOn: String? = nil) {
            
            self.modifiedOn = modifiedOn
            
            self.createdOn = createdOn
            
            self.approvedOn = approvedOn
            
            self.rejectedOn = rejectedOn
            
            self.reviewedOn = reviewedOn
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdOn = try container.decode(String.self, forKey: .createdOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    approvedOn = try container.decode(String.self, forKey: .approvedOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    rejectedOn = try container.decode(String.self, forKey: .rejectedOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    reviewedOn = try container.decode(String.self, forKey: .reviewedOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(approvedOn, forKey: .approvedOn)
            
            
            
            
            try? container.encodeIfPresent(rejectedOn, forKey: .rejectedOn)
            
            
            
            
            try? container.encodeIfPresent(reviewedOn, forKey: .reviewedOn)
            
            
        }
        
    }
}


