

import Foundation
public extension ApplicationClient.Logistic {
    /*
        Model: PromiseObject
        Used By: Logistic
    */
    class PromiseObject: Codable {
        
        public var min: String?
        
        public var max: String?
        
        public var customerPromise: PromiseData
        
        public var meta: PromiseMeta
        

        public enum CodingKeys: String, CodingKey {
            
            case min = "min"
            
            case max = "max"
            
            case customerPromise = "customer_promise"
            
            case meta = "meta"
            
        }

        public init(customerPromise: PromiseData, max: String? = nil, meta: PromiseMeta, min: String? = nil) {
            
            self.min = min
            
            self.max = max
            
            self.customerPromise = customerPromise
            
            self.meta = meta
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                min = try container.decode(String.self, forKey: .min)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                max = try container.decode(String.self, forKey: .max)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            customerPromise = try container.decode(PromiseData.self, forKey: .customerPromise)
            
            
            
            
            meta = try container.decode(PromiseMeta.self, forKey: .meta)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(min, forKey: .min)
            
            
            
            try? container.encodeIfPresent(max, forKey: .max)
            
            
            
            try? container.encodeIfPresent(customerPromise, forKey: .customerPromise)
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
        }
        
    }
}
