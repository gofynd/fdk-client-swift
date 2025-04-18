

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: BulkProductUploadJob
        Used By: Catalog
    */

    class BulkProductUploadJob: Codable {
        
        
        public var companyId: Int?
        
        public var total: Int?
        
        public var succeed: Int?
        
        public var stage: String?
        
        public var filePath: String?
        
        public var templateTag: String?
        
        public var trackingUrl: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case companyId = "company_id"
            
            case total = "total"
            
            case succeed = "succeed"
            
            case stage = "stage"
            
            case filePath = "file_path"
            
            case templateTag = "template_tag"
            
            case trackingUrl = "tracking_url"
            
        }

        public init(companyId: Int? = nil, filePath: String? = nil, stage: String? = nil, succeed: Int? = nil, templateTag: String? = nil, total: Int? = nil, trackingUrl: String? = nil) {
            
            self.companyId = companyId
            
            self.total = total
            
            self.succeed = succeed
            
            self.stage = stage
            
            self.filePath = filePath
            
            self.templateTag = templateTag
            
            self.trackingUrl = trackingUrl
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    companyId = try container.decode(Int.self, forKey: .companyId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    total = try container.decode(Int.self, forKey: .total)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    succeed = try container.decode(Int.self, forKey: .succeed)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    stage = try container.decode(String.self, forKey: .stage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    filePath = try container.decode(String.self, forKey: .filePath)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    templateTag = try container.decode(String.self, forKey: .templateTag)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    trackingUrl = try container.decode(String.self, forKey: .trackingUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(total, forKey: .total)
            
            
            
            
            try? container.encodeIfPresent(succeed, forKey: .succeed)
            
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
            
            
            try? container.encodeIfPresent(filePath, forKey: .filePath)
            
            
            
            
            try? container.encodeIfPresent(templateTag, forKey: .templateTag)
            
            
            
            
            try? container.encodeIfPresent(trackingUrl, forKey: .trackingUrl)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: BulkProductUploadJob
        Used By: Catalog
    */

    class BulkProductUploadJob: Codable {
        
        
        public var companyId: Int?
        
        public var total: Int?
        
        public var succeed: Int?
        
        public var stage: String?
        
        public var filePath: String?
        
        public var templateTag: String?
        
        public var trackingUrl: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case companyId = "company_id"
            
            case total = "total"
            
            case succeed = "succeed"
            
            case stage = "stage"
            
            case filePath = "file_path"
            
            case templateTag = "template_tag"
            
            case trackingUrl = "tracking_url"
            
        }

        public init(companyId: Int? = nil, filePath: String? = nil, stage: String? = nil, succeed: Int? = nil, templateTag: String? = nil, total: Int? = nil, trackingUrl: String? = nil) {
            
            self.companyId = companyId
            
            self.total = total
            
            self.succeed = succeed
            
            self.stage = stage
            
            self.filePath = filePath
            
            self.templateTag = templateTag
            
            self.trackingUrl = trackingUrl
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    companyId = try container.decode(Int.self, forKey: .companyId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    total = try container.decode(Int.self, forKey: .total)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    succeed = try container.decode(Int.self, forKey: .succeed)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    stage = try container.decode(String.self, forKey: .stage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    filePath = try container.decode(String.self, forKey: .filePath)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    templateTag = try container.decode(String.self, forKey: .templateTag)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    trackingUrl = try container.decode(String.self, forKey: .trackingUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(total, forKey: .total)
            
            
            
            
            try? container.encodeIfPresent(succeed, forKey: .succeed)
            
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
            
            
            try? container.encodeIfPresent(filePath, forKey: .filePath)
            
            
            
            
            try? container.encodeIfPresent(templateTag, forKey: .templateTag)
            
            
            
            
            try? container.encodeIfPresent(trackingUrl, forKey: .trackingUrl)
            
            
        }
        
    }
}


