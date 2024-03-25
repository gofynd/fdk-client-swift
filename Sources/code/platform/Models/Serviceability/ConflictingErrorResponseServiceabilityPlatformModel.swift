

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: ConflictingErrorResponse
        Used By: Serviceability
    */

    class ConflictingErrorResponse: Codable {
        
        
        public var detail: ErrorResponseDetail
        

        public enum CodingKeys: String, CodingKey {
            
            case detail = "detail"
            
        }

        public init(detail: ErrorResponseDetail) {
            
            self.detail = detail
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                detail = try container.decode(ErrorResponseDetail.self, forKey: .detail)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(detail, forKey: .detail)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: ConflictingErrorResponse
        Used By: Serviceability
    */

    class ConflictingErrorResponse: Codable {
        
        
        public var detail: ErrorResponseDetail
        

        public enum CodingKeys: String, CodingKey {
            
            case detail = "detail"
            
        }

        public init(detail: ErrorResponseDetail) {
            
            self.detail = detail
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                detail = try container.decode(ErrorResponseDetail.self, forKey: .detail)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(detail, forKey: .detail)
            
            
        }
        
    }
}


