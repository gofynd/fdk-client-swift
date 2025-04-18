

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: CouponOptionsPayableBy
        Used By: Cart
    */

    class CouponOptionsPayableBy: Codable {
        
        
        public var fyndMarketing: String?
        
        public var fynd: String?
        
        public var fyndStore: String?
        
        public var fyndDelights: String?
        
        public var fyndOps: String?
        
        public var fyndInventory: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case fyndMarketing = "fynd_marketing"
            
            case fynd = "fynd"
            
            case fyndStore = "fynd_store"
            
            case fyndDelights = "fynd_delights"
            
            case fyndOps = "fynd_ops"
            
            case fyndInventory = "fynd_inventory"
            
        }

        public init(fynd: String? = nil, fyndDelights: String? = nil, fyndInventory: String? = nil, fyndMarketing: String? = nil, fyndOps: String? = nil, fyndStore: String? = nil) {
            
            self.fyndMarketing = fyndMarketing
            
            self.fynd = fynd
            
            self.fyndStore = fyndStore
            
            self.fyndDelights = fyndDelights
            
            self.fyndOps = fyndOps
            
            self.fyndInventory = fyndInventory
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    fyndMarketing = try container.decode(String.self, forKey: .fyndMarketing)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fynd = try container.decode(String.self, forKey: .fynd)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fyndStore = try container.decode(String.self, forKey: .fyndStore)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fyndDelights = try container.decode(String.self, forKey: .fyndDelights)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fyndOps = try container.decode(String.self, forKey: .fyndOps)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fyndInventory = try container.decode(String.self, forKey: .fyndInventory)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(fyndMarketing, forKey: .fyndMarketing)
            
            
            
            
            try? container.encodeIfPresent(fynd, forKey: .fynd)
            
            
            
            
            try? container.encodeIfPresent(fyndStore, forKey: .fyndStore)
            
            
            
            
            try? container.encodeIfPresent(fyndDelights, forKey: .fyndDelights)
            
            
            
            
            try? container.encodeIfPresent(fyndOps, forKey: .fyndOps)
            
            
            
            
            try? container.encodeIfPresent(fyndInventory, forKey: .fyndInventory)
            
            
        }
        
    }
}


