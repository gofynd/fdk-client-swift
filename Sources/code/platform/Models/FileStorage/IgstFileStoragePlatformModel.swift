

import Foundation


public extension PlatformClient.FileStorage {
    /*
        Model: Igst
        Used By: FileStorage
    */

    class Igst: Codable {
        
        
        public var value: Double?
        
        public var percent: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case value = "value"
            
            case percent = "percent"
            
        }

        public init(percent: Double? = nil, value: Double? = nil) {
            
            self.value = value
            
            self.percent = percent
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    value = try container.decode(Double.self, forKey: .value)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    percent = try container.decode(Double.self, forKey: .percent)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encodeIfPresent(percent, forKey: .percent)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.FileStorage {
    /*
        Model: Igst
        Used By: FileStorage
    */

    class Igst: Codable {
        
        
        public var value: Double?
        
        public var percent: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case value = "value"
            
            case percent = "percent"
            
        }

        public init(percent: Double? = nil, value: Double? = nil) {
            
            self.value = value
            
            self.percent = percent
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    value = try container.decode(Double.self, forKey: .value)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    percent = try container.decode(Double.self, forKey: .percent)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encodeIfPresent(percent, forKey: .percent)
            
            
        }
        
    }
}


