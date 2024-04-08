

import Foundation
public extension ApplicationClient.Logistic {
    /*
        Model: Promise
        Used By: Logistic
    */
    class Promise: Codable {
        
        public var customerPromise: PromiseDetails?
        
        public var meta: PromiseMeta?
        

        public enum CodingKeys: String, CodingKey {
            
            case customerPromise = "customer_promise"
            
            case meta = "meta"
            
        }

        public init(customerPromise: PromiseDetails? = nil, meta: PromiseMeta? = nil) {
            
            self.customerPromise = customerPromise
            
            self.meta = meta
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                customerPromise = try container.decode(PromiseDetails.self, forKey: .customerPromise)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                meta = try container.decode(PromiseMeta.self, forKey: .meta)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(customerPromise, forKey: .customerPromise)
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
        }
        
    }
}
