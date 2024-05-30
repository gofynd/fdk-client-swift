

import Foundation
public extension ApplicationClient.FileStorage {
    /*
        Model: CompleteResponse
        Used By: FileStorage
    */
    class CompleteResponse: Codable {
        
        public var id: String
        
        public var fileName: String
        
        public var filePath: String
        
        public var contentType: String
        
        public var namespace: String
        
        public var operation: String
        
        public var size: Int
        
        public var upload: Upload
        
        public var cdn: CDN
        
        public var success: Bool
        
        public var tags: [String]?
        
        public var createdOn: String
        
        public var modifiedOn: String
        
        public var createdBy: CreatedBy?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case fileName = "file_name"
            
            case filePath = "file_path"
            
            case contentType = "content_type"
            
            case namespace = "namespace"
            
            case operation = "operation"
            
            case size = "size"
            
            case upload = "upload"
            
            case cdn = "cdn"
            
            case success = "success"
            
            case tags = "tags"
            
            case createdOn = "created_on"
            
            case modifiedOn = "modified_on"
            
            case createdBy = "created_by"
            
        }

        public init(cdn: CDN, contentType: String, createdBy: CreatedBy? = nil, createdOn: String, fileName: String, filePath: String, modifiedOn: String, namespace: String, operation: String, size: Int, success: Bool, tags: [String]? = nil, upload: Upload, id: String) {
            
            self.id = id
            
            self.fileName = fileName
            
            self.filePath = filePath
            
            self.contentType = contentType
            
            self.namespace = namespace
            
            self.operation = operation
            
            self.size = size
            
            self.upload = upload
            
            self.cdn = cdn
            
            self.success = success
            
            self.tags = tags
            
            self.createdOn = createdOn
            
            self.modifiedOn = modifiedOn
            
            self.createdBy = createdBy
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            id = try container.decode(String.self, forKey: .id)
            
            
            
            
            fileName = try container.decode(String.self, forKey: .fileName)
            
            
            
            
            filePath = try container.decode(String.self, forKey: .filePath)
            
            
            
            
            contentType = try container.decode(String.self, forKey: .contentType)
            
            
            
            
            namespace = try container.decode(String.self, forKey: .namespace)
            
            
            
            
            operation = try container.decode(String.self, forKey: .operation)
            
            
            
            
            size = try container.decode(Int.self, forKey: .size)
            
            
            
            
            upload = try container.decode(Upload.self, forKey: .upload)
            
            
            
            
            cdn = try container.decode(CDN.self, forKey: .cdn)
            
            
            
            
            success = try container.decode(Bool.self, forKey: .success)
            
            
            
            
            do {
                tags = try container.decode([String].self, forKey: .tags)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            createdOn = try container.decode(String.self, forKey: .createdOn)
            
            
            
            
            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
            
            
            
            
            do {
                createdBy = try container.decode(CreatedBy.self, forKey: .createdBy)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            try? container.encodeIfPresent(fileName, forKey: .fileName)
            
            
            
            try? container.encodeIfPresent(filePath, forKey: .filePath)
            
            
            
            try? container.encodeIfPresent(contentType, forKey: .contentType)
            
            
            
            try? container.encodeIfPresent(namespace, forKey: .namespace)
            
            
            
            try? container.encodeIfPresent(operation, forKey: .operation)
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            try? container.encodeIfPresent(upload, forKey: .upload)
            
            
            
            try? container.encodeIfPresent(cdn, forKey: .cdn)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
        }
        
    }
}
