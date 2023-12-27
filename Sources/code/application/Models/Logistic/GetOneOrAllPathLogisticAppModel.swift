

import Foundation
public extension ApplicationClient.Logistic {
    /*
        Model: GetOneOrAllPath
        Used By: Logistic
    */
    class GetOneOrAllPath: Codable {
        
        public var localityType: String?
        
        public var localityValue: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case localityType = "locality_type"
            
            case localityValue = "locality_value"
            
        }

        public init(localityType: String? = nil, localityValue: String? = nil) {
            
            self.localityType = localityType
            
            self.localityValue = localityValue
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                localityType = try container.decode(String.self, forKey: .localityType)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                localityValue = try container.decode(String.self, forKey: .localityValue)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(localityType, forKey: .localityType)
            
            
            
            
            try? container.encodeIfPresent(localityValue, forKey: .localityValue)
            
            
        }
        
    }
}
