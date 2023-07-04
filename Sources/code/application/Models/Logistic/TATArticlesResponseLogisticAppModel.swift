

import Foundation
public extension ApplicationClient.Logistic {
    /*
         Model: TATArticlesResponse
         Used By: Logistic
     */
    class TATArticlesResponse: Codable {
        public var manufacturingTimeUnit: String?

        public var promise: TATPromiseResponse?

        public var category: TATCategoryRequest?

        public var isCodAvailable: Bool?

        public var manufacturingTimeSeconds: Int?

        public var manufacturingTime: Int?

        public var error: TATErrorSchemaResponse?

        public enum CodingKeys: String, CodingKey {
            case manufacturingTimeUnit = "manufacturing_time_unit"

            case promise

            case category

            case isCodAvailable = "is_cod_available"

            case manufacturingTimeSeconds = "_manufacturing_time_seconds"

            case manufacturingTime = "manufacturing_time"

            case error
        }

        public init(category: TATCategoryRequest? = nil, error: TATErrorSchemaResponse? = nil, isCodAvailable: Bool? = nil, manufacturingTime: Int? = nil, manufacturingTimeUnit: String? = nil, promise: TATPromiseResponse? = nil, manufacturingTimeSeconds: Int? = nil) {
            self.manufacturingTimeUnit = manufacturingTimeUnit

            self.promise = promise

            self.category = category

            self.isCodAvailable = isCodAvailable

            self.manufacturingTimeSeconds = manufacturingTimeSeconds

            self.manufacturingTime = manufacturingTime

            self.error = error
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                manufacturingTimeUnit = try container.decode(String.self, forKey: .manufacturingTimeUnit)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                promise = try container.decode(TATPromiseResponse.self, forKey: .promise)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                category = try container.decode(TATCategoryRequest.self, forKey: .category)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isCodAvailable = try container.decode(Bool.self, forKey: .isCodAvailable)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                manufacturingTimeSeconds = try container.decode(Int.self, forKey: .manufacturingTimeSeconds)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                manufacturingTime = try container.decode(Int.self, forKey: .manufacturingTime)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                error = try container.decode(TATErrorSchemaResponse.self, forKey: .error)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(manufacturingTimeUnit, forKey: .manufacturingTimeUnit)

            try? container.encodeIfPresent(promise, forKey: .promise)

            try? container.encodeIfPresent(category, forKey: .category)

            try? container.encodeIfPresent(isCodAvailable, forKey: .isCodAvailable)

            try? container.encodeIfPresent(manufacturingTimeSeconds, forKey: .manufacturingTimeSeconds)

            try? container.encodeIfPresent(manufacturingTime, forKey: .manufacturingTime)

            try? container.encodeIfPresent(error, forKey: .error)
        }
    }
}
