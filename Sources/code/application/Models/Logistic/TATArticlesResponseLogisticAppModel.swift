

import Foundation
public extension ApplicationClient.Logistic {
    /*
         Model: TATArticlesResponse
         Used By: Logistic
     */
    class TATArticlesResponse: Codable {
        public var manufacturingTime: Int?

        public var isCodAvailable: Bool?

        public var error: TATErrorSchemaResponse?

        public var category: TATCategoryRequest?

        public var manufacturingTimeUnit: String?

        public var manufacturingTimeSeconds: Int?

        public var promise: TATPromiseResponse?

        public enum CodingKeys: String, CodingKey {
            case manufacturingTime = "manufacturing_time"

            case isCodAvailable = "is_cod_available"

            case error

            case category

            case manufacturingTimeUnit = "manufacturing_time_unit"

            case manufacturingTimeSeconds = "_manufacturing_time_seconds"

            case promise
        }

        public init(category: TATCategoryRequest? = nil, error: TATErrorSchemaResponse? = nil, isCodAvailable: Bool? = nil, manufacturingTime: Int? = nil, manufacturingTimeUnit: String? = nil, promise: TATPromiseResponse? = nil, manufacturingTimeSeconds: Int? = nil) {
            self.manufacturingTime = manufacturingTime

            self.isCodAvailable = isCodAvailable

            self.error = error

            self.category = category

            self.manufacturingTimeUnit = manufacturingTimeUnit

            self.manufacturingTimeSeconds = manufacturingTimeSeconds

            self.promise = promise
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                manufacturingTime = try container.decode(Int.self, forKey: .manufacturingTime)

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
                error = try container.decode(TATErrorSchemaResponse.self, forKey: .error)

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
                manufacturingTimeUnit = try container.decode(String.self, forKey: .manufacturingTimeUnit)

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
                promise = try container.decode(TATPromiseResponse.self, forKey: .promise)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(manufacturingTime, forKey: .manufacturingTime)

            try? container.encodeIfPresent(isCodAvailable, forKey: .isCodAvailable)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(category, forKey: .category)

            try? container.encodeIfPresent(manufacturingTimeUnit, forKey: .manufacturingTimeUnit)

            try? container.encodeIfPresent(manufacturingTimeSeconds, forKey: .manufacturingTimeSeconds)

            try? container.encodeIfPresent(promise, forKey: .promise)
        }
    }
}
