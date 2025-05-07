

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: PromotionAuthor
        Used By: Cart
    */

    class PromotionAuthor: Codable {
        
        
        public var createdBy: String?
        
        public var modifiedBy: String?
        
        public var rejectedBy: String?
        
        public var approvedBy: String?
        
        public var reviewedBy: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case createdBy = "created_by"
            
            case modifiedBy = "modified_by"
            
            case rejectedBy = "rejected_by"
            
            case approvedBy = "approved_by"
            
            case reviewedBy = "reviewed_by"
            
        }

        public init(approvedBy: String? = nil, createdBy: String? = nil, modifiedBy: String? = nil, rejectedBy: String? = nil, reviewedBy: String? = nil) {
            
            self.createdBy = createdBy
            
            self.modifiedBy = modifiedBy
            
            self.rejectedBy = rejectedBy
            
            self.approvedBy = approvedBy
            
            self.reviewedBy = reviewedBy
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    createdBy = try container.decode(String.self, forKey: .createdBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedBy = try container.decode(String.self, forKey: .modifiedBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    rejectedBy = try container.decode(String.self, forKey: .rejectedBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    approvedBy = try container.decode(String.self, forKey: .approvedBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    reviewedBy = try container.decode(String.self, forKey: .reviewedBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(rejectedBy, forKey: .rejectedBy)
            
            
            
            
            try? container.encodeIfPresent(approvedBy, forKey: .approvedBy)
            
            
            
            
            try? container.encodeIfPresent(reviewedBy, forKey: .reviewedBy)
            
            
        }
        
    }
}


