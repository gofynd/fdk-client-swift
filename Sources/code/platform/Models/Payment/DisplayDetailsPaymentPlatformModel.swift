

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: DisplayDetails
        Used By: Payment
    */

    class DisplayDetails: Codable {
        
        
        public var link: String?
        
        public var text: String?
        
        public var description: String?
        
        public var reviewStatus: String?
        
        public var info: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case link = "link"
            
            case text = "text"
            
            case description = "description"
            
            case reviewStatus = "review_status"
            
            case info = "info"
            
        }

        public init(description: String? = nil, info: [String]? = nil, link: String? = nil, reviewStatus: String? = nil, text: String? = nil) {
            
            self.link = link
            
            self.text = text
            
            self.description = description
            
            self.reviewStatus = reviewStatus
            
            self.info = info
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    link = try container.decode(String.self, forKey: .link)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    text = try container.decode(String.self, forKey: .text)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    reviewStatus = try container.decode(String.self, forKey: .reviewStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    info = try container.decode([String].self, forKey: .info)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(link, forKey: .link)
            
            
            
            
            try? container.encodeIfPresent(text, forKey: .text)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(reviewStatus, forKey: .reviewStatus)
            
            
            
            
            try? container.encodeIfPresent(info, forKey: .info)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: DisplayDetails
        Used By: Payment
    */

    class DisplayDetails: Codable {
        
        
        public var link: String?
        
        public var text: String?
        
        public var description: String?
        
        public var reviewStatus: String?
        
        public var info: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case link = "link"
            
            case text = "text"
            
            case description = "description"
            
            case reviewStatus = "review_status"
            
            case info = "info"
            
        }

        public init(description: String? = nil, info: [String]? = nil, link: String? = nil, reviewStatus: String? = nil, text: String? = nil) {
            
            self.link = link
            
            self.text = text
            
            self.description = description
            
            self.reviewStatus = reviewStatus
            
            self.info = info
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    link = try container.decode(String.self, forKey: .link)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    text = try container.decode(String.self, forKey: .text)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    reviewStatus = try container.decode(String.self, forKey: .reviewStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    info = try container.decode([String].self, forKey: .info)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(link, forKey: .link)
            
            
            
            
            try? container.encodeIfPresent(text, forKey: .text)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(reviewStatus, forKey: .reviewStatus)
            
            
            
            
            try? container.encodeIfPresent(info, forKey: .info)
            
            
        }
        
    }
}


