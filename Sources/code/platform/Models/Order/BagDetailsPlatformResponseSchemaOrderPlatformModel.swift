

import Foundation


public extension PlatformClient.Order {
    /*
        Model: BagDetailsPlatformResponseSchema
        Used By: Order
    */

    class BagDetailsPlatformResponseSchema: Codable {
        
        
        public var statusCode: Int?
        
        public var data: BagDetails?
        

        public enum CodingKeys: String, CodingKey {
            
            case statusCode = "status_code"
            
            case data = "data"
            
        }

        public init(data: BagDetails? = nil, statusCode: Int? = nil) {
            
            self.statusCode = statusCode
            
            self.data = data
            
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
                    data = try container.decode(BagDetails.self, forKey: .data)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(statusCode, forKey: .statusCode)
            
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: BagDetailsPlatformResponseSchema
        Used By: Order
    */

    class BagDetailsPlatformResponseSchema: Codable {
        
        
        public var statusCode: Int?
        
        public var data: BagDetails?
        

        public enum CodingKeys: String, CodingKey {
            
            case statusCode = "status_code"
            
            case data = "data"
            
        }

        public init(data: BagDetails? = nil, statusCode: Int? = nil) {
            
            self.statusCode = statusCode
            
            self.data = data
            
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
                    data = try container.decode(BagDetails.self, forKey: .data)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(statusCode, forKey: .statusCode)
            
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
        }
        
    }
}


