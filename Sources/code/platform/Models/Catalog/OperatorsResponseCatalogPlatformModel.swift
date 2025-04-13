

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: OperatorsResponse
        Used By: Catalog
    */

    class OperatorsResponse: Codable {
        
        
        public var btw: String?
        
        public var lte: String?
        
        public var gte: String?
        
        public var gt: String?
        
        public var lt: String?
        
        public var nin: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case btw = "btw"
            
            case lte = "lte"
            
            case gte = "gte"
            
            case gt = "gt"
            
            case lt = "lt"
            
            case nin = "nin"
            
        }

        public init(btw: String? = nil, gt: String? = nil, gte: String? = nil, lt: String? = nil, lte: String? = nil, nin: String? = nil) {
            
            self.btw = btw
            
            self.lte = lte
            
            self.gte = gte
            
            self.gt = gt
            
            self.lt = lt
            
            self.nin = nin
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    btw = try container.decode(String.self, forKey: .btw)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    lte = try container.decode(String.self, forKey: .lte)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    gte = try container.decode(String.self, forKey: .gte)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    gt = try container.decode(String.self, forKey: .gt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    lt = try container.decode(String.self, forKey: .lt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    nin = try container.decode(String.self, forKey: .nin)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(btw, forKey: .btw)
            
            
            
            
            try? container.encodeIfPresent(lte, forKey: .lte)
            
            
            
            
            try? container.encodeIfPresent(gte, forKey: .gte)
            
            
            
            
            try? container.encodeIfPresent(gt, forKey: .gt)
            
            
            
            
            try? container.encodeIfPresent(lt, forKey: .lt)
            
            
            
            
            try? container.encodeIfPresent(nin, forKey: .nin)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: OperatorsResponse
        Used By: Catalog
    */

    class OperatorsResponse: Codable {
        
        
        public var btw: String?
        
        public var lte: String?
        
        public var gte: String?
        
        public var gt: String?
        
        public var lt: String?
        
        public var nin: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case btw = "btw"
            
            case lte = "lte"
            
            case gte = "gte"
            
            case gt = "gt"
            
            case lt = "lt"
            
            case nin = "nin"
            
        }

        public init(btw: String? = nil, gt: String? = nil, gte: String? = nil, lt: String? = nil, lte: String? = nil, nin: String? = nil) {
            
            self.btw = btw
            
            self.lte = lte
            
            self.gte = gte
            
            self.gt = gt
            
            self.lt = lt
            
            self.nin = nin
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    btw = try container.decode(String.self, forKey: .btw)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    lte = try container.decode(String.self, forKey: .lte)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    gte = try container.decode(String.self, forKey: .gte)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    gt = try container.decode(String.self, forKey: .gt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    lt = try container.decode(String.self, forKey: .lt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    nin = try container.decode(String.self, forKey: .nin)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(btw, forKey: .btw)
            
            
            
            
            try? container.encodeIfPresent(lte, forKey: .lte)
            
            
            
            
            try? container.encodeIfPresent(gte, forKey: .gte)
            
            
            
            
            try? container.encodeIfPresent(gt, forKey: .gt)
            
            
            
            
            try? container.encodeIfPresent(lt, forKey: .lt)
            
            
            
            
            try? container.encodeIfPresent(nin, forKey: .nin)
            
            
        }
        
    }
}


