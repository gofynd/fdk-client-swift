

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: PackageMaterialNotFound
        Used By: Serviceability
    */

    class PackageMaterialNotFound: Codable {
        
        
        public var statusCode: Int?
        
        public var success: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case statusCode = "status_code"
            
            case success = "success"
            
        }

        public init(statusCode: Int? = nil, success: Bool? = nil) {
            
            self.statusCode = statusCode
            
            self.success = success
            
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
                
            
            
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(statusCode, forKey: .statusCode)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: PackageMaterialNotFound
        Used By: Serviceability
    */

    class PackageMaterialNotFound: Codable {
        
        
        public var statusCode: Int?
        
        public var success: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case statusCode = "status_code"
            
            case success = "success"
            
        }

        public init(statusCode: Int? = nil, success: Bool? = nil) {
            
            self.statusCode = statusCode
            
            self.success = success
            
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
                
            
            
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(statusCode, forKey: .statusCode)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
        }
        
    }
}


