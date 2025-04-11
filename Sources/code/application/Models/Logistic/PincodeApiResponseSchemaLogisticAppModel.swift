

import Foundation
public extension ApplicationClient.Logistic {
    /*
        Model: PincodeApiResponseSchema
        Used By: Logistic
    */
    class PincodeApiResponseSchema: Codable {
        
        public var success: Bool
        
        public var data: [PincodeDataResponseSchema]?
        
        public var error: PincodeErrorResponseSchema
        
        public var requestUuid: String?
        
        public var stormbreakerUuid: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case data = "data"
            
            case error = "error"
            
            case requestUuid = "request_uuid"
            
            case stormbreakerUuid = "stormbreaker_uuid"
            
        }

        public init(data: [PincodeDataResponseSchema]? = nil, error: PincodeErrorResponseSchema, requestUuid: String? = nil, stormbreakerUuid: String? = nil, success: Bool) {
            
            self.success = success
            
            self.data = data
            
            self.error = error
            
            self.requestUuid = requestUuid
            
            self.stormbreakerUuid = stormbreakerUuid
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            success = try container.decode(Bool.self, forKey: .success)
            
            
            
            
            do {
                data = try container.decode([PincodeDataResponseSchema].self, forKey: .data)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            error = try container.decode(PincodeErrorResponseSchema.self, forKey: .error)
            
            
            
            
            do {
                requestUuid = try container.decode(String.self, forKey: .requestUuid)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                stormbreakerUuid = try container.decode(String.self, forKey: .stormbreakerUuid)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
            
            try? container.encodeIfPresent(requestUuid, forKey: .requestUuid)
            
            
            
            try? container.encodeIfPresent(stormbreakerUuid, forKey: .stormbreakerUuid)
            
            
        }
        
    }
}
