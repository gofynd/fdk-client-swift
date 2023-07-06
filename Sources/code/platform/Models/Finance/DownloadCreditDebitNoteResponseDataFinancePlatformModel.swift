

import Foundation

public extension PlatformClient.Finance {
    /*
         Model: DownloadCreditDebitNoteResponseData
         Used By: Finance
     */

    class DownloadCreditDebitNoteResponseData: Codable {
        public var id: String?

        public var pdfS3Url: String?

        public enum CodingKeys: String, CodingKey {
            case id

            case pdfS3Url = "pdf_s3_url"
        }

        public init(id: String? = nil, pdfS3Url: String? = nil) {
            self.id = id

            self.pdfS3Url = pdfS3Url
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pdfS3Url = try container.decode(String.self, forKey: .pdfS3Url)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(pdfS3Url, forKey: .pdfS3Url)
        }
    }
}
