

import Foundation


public extension PlatformClient.Order {
    /*
        Model: ConfigPayment
        Used By: Order
    */

    class ConfigPayment: Codable {
        
        
        public var source: String?
        
        public var modeOfPayment: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case source = "source"
            
            case modeOfPayment = "mode_of_payment"
            
        }

        public init(modeOfPayment: String? = nil, source: String? = nil) {
            
            self.source = source
            
            self.modeOfPayment = modeOfPayment
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    source = try container.decode(String.self, forKey: .source)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modeOfPayment = try container.decode(String.self, forKey: .modeOfPayment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(source, forKey: .source)
            
            
            
            
            try? container.encodeIfPresent(modeOfPayment, forKey: .modeOfPayment)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: ConfigPayment
        Used By: Order
    */

    class ConfigPayment: Codable {
        
        
        public var source: String?
        
        public var modeOfPayment: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case source = "source"
            
            case modeOfPayment = "mode_of_payment"
            
        }

        public init(modeOfPayment: String? = nil, source: String? = nil) {
            
            self.source = source
            
            self.modeOfPayment = modeOfPayment
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    source = try container.decode(String.self, forKey: .source)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modeOfPayment = try container.decode(String.self, forKey: .modeOfPayment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(source, forKey: .source)
            
            
            
            
            try? container.encodeIfPresent(modeOfPayment, forKey: .modeOfPayment)
            
            
        }
        
    }
}


