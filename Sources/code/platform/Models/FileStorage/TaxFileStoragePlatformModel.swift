

import Foundation


public extension PlatformClient.FileStorage {
    /*
        Model: Tax
        Used By: FileStorage
    */

    class Tax: Codable {
        
        
        public var cgst: Cgst?
        
        public var sgst: Sgst?
        
        public var igst: Igst?
        

        public enum CodingKeys: String, CodingKey {
            
            case cgst = "cgst"
            
            case sgst = "sgst"
            
            case igst = "igst"
            
        }

        public init(cgst: Cgst? = nil, igst: Igst? = nil, sgst: Sgst? = nil) {
            
            self.cgst = cgst
            
            self.sgst = sgst
            
            self.igst = igst
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    cgst = try container.decode(Cgst.self, forKey: .cgst)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sgst = try container.decode(Sgst.self, forKey: .sgst)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    igst = try container.decode(Igst.self, forKey: .igst)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(cgst, forKey: .cgst)
            
            
            
            
            try? container.encodeIfPresent(sgst, forKey: .sgst)
            
            
            
            
            try? container.encodeIfPresent(igst, forKey: .igst)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.FileStorage {
    /*
        Model: Tax
        Used By: FileStorage
    */

    class Tax: Codable {
        
        
        public var cgst: Cgst?
        
        public var sgst: Sgst?
        
        public var igst: Igst?
        

        public enum CodingKeys: String, CodingKey {
            
            case cgst = "cgst"
            
            case sgst = "sgst"
            
            case igst = "igst"
            
        }

        public init(cgst: Cgst? = nil, igst: Igst? = nil, sgst: Sgst? = nil) {
            
            self.cgst = cgst
            
            self.sgst = sgst
            
            self.igst = igst
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    cgst = try container.decode(Cgst.self, forKey: .cgst)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sgst = try container.decode(Sgst.self, forKey: .sgst)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    igst = try container.decode(Igst.self, forKey: .igst)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(cgst, forKey: .cgst)
            
            
            
            
            try? container.encodeIfPresent(sgst, forKey: .sgst)
            
            
            
            
            try? container.encodeIfPresent(igst, forKey: .igst)
            
            
        }
        
    }
}


