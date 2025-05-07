

import Foundation


public extension PlatformClient.Communication {
    /*
        Model: OtpConfigRateLimit
        Used By: Communication
    */

    class OtpConfigRateLimit: Codable {
        
        
        public var duration: Double?
        
        public var limit: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case duration = "duration"
            
            case limit = "limit"
            
        }

        public init(duration: Double? = nil, limit: Double? = nil) {
            
            self.duration = duration
            
            self.limit = limit
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    duration = try container.decode(Double.self, forKey: .duration)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    limit = try container.decode(Double.self, forKey: .limit)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(duration, forKey: .duration)
            
            
            
            
            try? container.encodeIfPresent(limit, forKey: .limit)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Communication {
    /*
        Model: OtpConfigRateLimit
        Used By: Communication
    */

    class OtpConfigRateLimit: Codable {
        
        
        public var duration: Double?
        
        public var limit: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case duration = "duration"
            
            case limit = "limit"
            
        }

        public init(duration: Double? = nil, limit: Double? = nil) {
            
            self.duration = duration
            
            self.limit = limit
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    duration = try container.decode(Double.self, forKey: .duration)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    limit = try container.decode(Double.self, forKey: .limit)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(duration, forKey: .duration)
            
            
            
            
            try? container.encodeIfPresent(limit, forKey: .limit)
            
            
        }
        
    }
}


