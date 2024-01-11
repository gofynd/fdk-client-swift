

import Foundation
public extension ApplicationClient.Logistic {
    /*
        Model: GetCountryFieldsAddressValues
        Used By: Logistic
    */
    class GetCountryFieldsAddressValues: Codable {
        
        public var getOne: GetOneOrAll?
        
        public var getAll: GetOneOrAll?
        

        public enum CodingKeys: String, CodingKey {
            
            case getOne = "get_one"
            
            case getAll = "get_all"
            
        }

        public init(getAll: GetOneOrAll? = nil, getOne: GetOneOrAll? = nil) {
            
            self.getOne = getOne
            
            self.getAll = getAll
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                getOne = try container.decode(GetOneOrAll.self, forKey: .getOne)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                getAll = try container.decode(GetOneOrAll.self, forKey: .getAll)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(getOne, forKey: .getOne)
            
            
            
            
            try? container.encodeIfPresent(getAll, forKey: .getAll)
            
            
        }
        
    }
}
