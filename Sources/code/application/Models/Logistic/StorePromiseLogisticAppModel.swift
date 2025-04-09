

import Foundation
public extension ApplicationClient.Logistic {
    /*
        Model: StorePromise
        Used By: Logistic
    */
    class StorePromise: Codable {
        
        public var uid: Int?
        
        public var code: String?
        
        public var name: String?
        
        public var promise: Promise?
        

        public enum CodingKeys: String, CodingKey {
            
            case uid = "uid"
            
            case code = "code"
            
            case name = "name"
            
            case promise = "promise"
            
        }

        public init(code: String? = nil, name: String? = nil, promise: Promise? = nil, uid: Int? = nil) {
            
            self.uid = uid
            
            self.code = code
            
            self.name = name
            
            self.promise = promise
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                uid = try container.decode(Int.self, forKey: .uid)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                code = try container.decode(String.self, forKey: .code)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                name = try container.decode(String.self, forKey: .name)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                promise = try container.decode(Promise.self, forKey: .promise)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            try? container.encodeIfPresent(promise, forKey: .promise)
            
            
        }
        
    }
}
