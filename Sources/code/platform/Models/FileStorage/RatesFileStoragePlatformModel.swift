

import Foundation


public extension PlatformClient.FileStorage {
    /*
        Model: Rates
        Used By: FileStorage
    */

    class Rates: Codable {
        
        
        public var inr: Inr?
        
        public var usd: Usd?
        

        public enum CodingKeys: String, CodingKey {
            
            case inr = "inr"
            
            case usd = "usd"
            
        }

        public init(inr: Inr? = nil, usd: Usd? = nil) {
            
            self.inr = inr
            
            self.usd = usd
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    inr = try container.decode(Inr.self, forKey: .inr)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    usd = try container.decode(Usd.self, forKey: .usd)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(inr, forKey: .inr)
            
            
            
            
            try? container.encodeIfPresent(usd, forKey: .usd)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.FileStorage {
    /*
        Model: Rates
        Used By: FileStorage
    */

    class Rates: Codable {
        
        
        public var inr: Inr?
        
        public var usd: Usd?
        

        public enum CodingKeys: String, CodingKey {
            
            case inr = "inr"
            
            case usd = "usd"
            
        }

        public init(inr: Inr? = nil, usd: Usd? = nil) {
            
            self.inr = inr
            
            self.usd = usd
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    inr = try container.decode(Inr.self, forKey: .inr)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    usd = try container.decode(Usd.self, forKey: .usd)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(inr, forKey: .inr)
            
            
            
            
            try? container.encodeIfPresent(usd, forKey: .usd)
            
            
        }
        
    }
}


