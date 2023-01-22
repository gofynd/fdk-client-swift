

import Foundation
public extension PlatformClient {
    /*
        Model: GetUserCODLimitResponse
        Used By: Payment
    */

    class GetUserCODLimitResponse: Codable {
        
        
        public var userCodData: CODdata
        
        public var success: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case userCodData = "user_cod_data"
            
            case success = "success"
            
        }

        public init(success: Bool, userCodData: CODdata) {
            
            self.userCodData = userCodData
            
            self.success = success
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                userCodData = try container.decode(CODdata.self, forKey: .userCodData)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(userCodData, forKey: .userCodData)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
        }
        
    }
}
