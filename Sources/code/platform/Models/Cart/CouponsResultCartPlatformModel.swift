

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: CouponsResult
        Used By: Cart
    */

    class CouponsResult: Codable {
        
        
        public var items: [CouponObj]?
        
        public var page: Page?
        
        public var success: Bool?
        
        public var draft: Double?
        
        public var review: Double?
        
        public var rejected: Double?
        
        public var approved: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case page = "page"
            
            case success = "success"
            
            case draft = "draft"
            
            case review = "review"
            
            case rejected = "rejected"
            
            case approved = "approved"
            
        }

        public init(approved: Double? = nil, draft: Double? = nil, items: [CouponObj]? = nil, page: Page? = nil, rejected: Double? = nil, review: Double? = nil, success: Bool? = nil) {
            
            self.items = items
            
            self.page = page
            
            self.success = success
            
            self.draft = draft
            
            self.review = review
            
            self.rejected = rejected
            
            self.approved = approved
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    items = try container.decode([CouponObj].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    page = try container.decode(Page.self, forKey: .page)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    draft = try container.decode(Double.self, forKey: .draft)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    review = try container.decode(Double.self, forKey: .review)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    rejected = try container.decode(Double.self, forKey: .rejected)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    approved = try container.decode(Double.self, forKey: .approved)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(draft, forKey: .draft)
            
            
            
            
            try? container.encodeIfPresent(review, forKey: .review)
            
            
            
            
            try? container.encodeIfPresent(rejected, forKey: .rejected)
            
            
            
            
            try? container.encodeIfPresent(approved, forKey: .approved)
            
            
        }
        
    }
}


