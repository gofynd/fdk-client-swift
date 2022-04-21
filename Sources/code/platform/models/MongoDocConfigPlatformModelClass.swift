

import Foundation
public extension PlatformClient {
    /*
         Model: MongoDocConfig
         Used By: Inventory
     */

    class MongoDocConfig: Codable {
        public var collectionName: String?

        public var findQuery: [String: Any]?

        public var projectionQuery: [String: Any]?

        public var propBeanConfigs: [PropBeanConfig]?

        public var aggregatePipeline: [[String: Any]]?

        public var skipSave: Bool?

        public enum CodingKeys: String, CodingKey {
            case collectionName = "collection_name"

            case findQuery = "find_query"

            case projectionQuery = "projection_query"

            case propBeanConfigs = "prop_bean_configs"

            case aggregatePipeline = "aggregate_pipeline"

            case skipSave = "skip_save"
        }

        public init(aggregatePipeline: [[String: Any]]? = nil, collectionName: String? = nil, findQuery: [String: Any]? = nil, projectionQuery: [String: Any]? = nil, propBeanConfigs: [PropBeanConfig]? = nil, skipSave: Bool? = nil) {
            self.collectionName = collectionName

            self.findQuery = findQuery

            self.projectionQuery = projectionQuery

            self.propBeanConfigs = propBeanConfigs

            self.aggregatePipeline = aggregatePipeline

            self.skipSave = skipSave
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                collectionName = try container.decode(String.self, forKey: .collectionName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                findQuery = try container.decode([String: Any].self, forKey: .findQuery)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                projectionQuery = try container.decode([String: Any].self, forKey: .projectionQuery)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                propBeanConfigs = try container.decode([PropBeanConfig].self, forKey: .propBeanConfigs)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                aggregatePipeline = try container.decode([[String: Any]].self, forKey: .aggregatePipeline)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                skipSave = try container.decode(Bool.self, forKey: .skipSave)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(collectionName, forKey: .collectionName)

            try? container.encodeIfPresent(findQuery, forKey: .findQuery)

            try? container.encodeIfPresent(projectionQuery, forKey: .projectionQuery)

            try? container.encodeIfPresent(propBeanConfigs, forKey: .propBeanConfigs)

            try? container.encodeIfPresent(aggregatePipeline, forKey: .aggregatePipeline)

            try? container.encodeIfPresent(skipSave, forKey: .skipSave)
        }
    }
}
