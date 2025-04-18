

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: ErrorDetails
        Used By: Catalog
    */

    class ErrorDetails: Codable {
        
        
        public var statusCode: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case statusCode = "status_code"
            
        }

        public init(statusCode: Int? = nil) {
            
            self.statusCode = statusCode
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    statusCode = try container.decode(Int.self, forKey: .statusCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(statusCode, forKey: .statusCode)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: ErrorDetails
        Used By: Catalog
    */

    class ErrorDetails: Codable {
        
        
        public var statusCode: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case statusCode = "status_code"
            
        }

        public init(statusCode: Int? = nil) {
            
            self.statusCode = statusCode
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    statusCode = try container.decode(Int.self, forKey: .statusCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(statusCode, forKey: .statusCode)
            
            
        }
        
    }
}


