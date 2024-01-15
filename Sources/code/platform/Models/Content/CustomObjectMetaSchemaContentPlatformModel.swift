

import Foundation


public extension PlatformClient.Content {
    /*
        Model: CustomObjectMetaSchema
        Used By: Content
    */

    class CustomObjectMetaSchema: Codable {
        
        
        public var moTotalCount: Int?
        
        public var moSuccessCount: Int?
        
        public var moErrorCount: Int?
        
        public var moDefintionType: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case moTotalCount = "mo_total_count"
            
            case moSuccessCount = "mo_success_count"
            
            case moErrorCount = "mo_error_count"
            
            case moDefintionType = "mo_defintion_type"
            
        }

        public init(moDefintionType: String? = nil, moErrorCount: Int? = nil, moSuccessCount: Int? = nil, moTotalCount: Int? = nil) {
            
            self.moTotalCount = moTotalCount
            
            self.moSuccessCount = moSuccessCount
            
            self.moErrorCount = moErrorCount
            
            self.moDefintionType = moDefintionType
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    moTotalCount = try container.decode(Int.self, forKey: .moTotalCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    moSuccessCount = try container.decode(Int.self, forKey: .moSuccessCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    moErrorCount = try container.decode(Int.self, forKey: .moErrorCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    moDefintionType = try container.decode(String.self, forKey: .moDefintionType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(moTotalCount, forKey: .moTotalCount)
            
            
            
            
            try? container.encodeIfPresent(moSuccessCount, forKey: .moSuccessCount)
            
            
            
            
            try? container.encodeIfPresent(moErrorCount, forKey: .moErrorCount)
            
            
            
            
            try? container.encodeIfPresent(moDefintionType, forKey: .moDefintionType)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Content {
    /*
        Model: CustomObjectMetaSchema
        Used By: Content
    */

    class CustomObjectMetaSchema: Codable {
        
        
        public var moTotalCount: Int?
        
        public var moSuccessCount: Int?
        
        public var moErrorCount: Int?
        
        public var moDefintionType: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case moTotalCount = "mo_total_count"
            
            case moSuccessCount = "mo_success_count"
            
            case moErrorCount = "mo_error_count"
            
            case moDefintionType = "mo_defintion_type"
            
        }

        public init(moDefintionType: String? = nil, moErrorCount: Int? = nil, moSuccessCount: Int? = nil, moTotalCount: Int? = nil) {
            
            self.moTotalCount = moTotalCount
            
            self.moSuccessCount = moSuccessCount
            
            self.moErrorCount = moErrorCount
            
            self.moDefintionType = moDefintionType
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    moTotalCount = try container.decode(Int.self, forKey: .moTotalCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    moSuccessCount = try container.decode(Int.self, forKey: .moSuccessCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    moErrorCount = try container.decode(Int.self, forKey: .moErrorCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    moDefintionType = try container.decode(String.self, forKey: .moDefintionType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(moTotalCount, forKey: .moTotalCount)
            
            
            
            
            try? container.encodeIfPresent(moSuccessCount, forKey: .moSuccessCount)
            
            
            
            
            try? container.encodeIfPresent(moErrorCount, forKey: .moErrorCount)
            
            
            
            
            try? container.encodeIfPresent(moDefintionType, forKey: .moDefintionType)
            
            
        }
        
    }
}


