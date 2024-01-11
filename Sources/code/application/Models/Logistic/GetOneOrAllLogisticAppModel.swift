

import Foundation
public extension ApplicationClient.Logistic {
    /*
        Model: GetOneOrAll
        Used By: Logistic
    */
    class GetOneOrAll: Codable {
        
        public var operationId: String?
        
        public var params: GetOneOrAllParams?
        

        public enum CodingKeys: String, CodingKey {
            
            case operationId = "operation_id"
            
            case params = "params"
            
        }

        public init(operationId: String? = nil, params: GetOneOrAllParams? = nil) {
            
            self.operationId = operationId
            
            self.params = params
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                operationId = try container.decode(String.self, forKey: .operationId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                params = try container.decode(GetOneOrAllParams.self, forKey: .params)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(operationId, forKey: .operationId)
            
            
            
            
            try? container.encodeIfPresent(params, forKey: .params)
            
            
        }
        
    }
}
