

import Foundation
public extension ApplicationClient.Logistic {
    /*
        Model: PincodeDetails
        Used By: Logistic
    */
    class PincodeDetails: Codable {
        
        public var success: Bool
        
        public var data: [PincodeDataResult]?
        
        public var error: PincodeErrorSchemaResult
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case data = "data"
            
            case error = "error"
            
        }

        public init(data: [PincodeDataResult]? = nil, error: PincodeErrorSchemaResult, success: Bool) {
            
            self.success = success
            
            self.data = data
            
            self.error = error
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            success = try container.decode(Bool.self, forKey: .success)
            
            
            
            
            do {
                data = try container.decode([PincodeDataResult].self, forKey: .data)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            error = try container.decode(PincodeErrorSchemaResult.self, forKey: .error)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
        }
        
    }
}
