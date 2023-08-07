

import Foundation

public extension PlatformClient.Finance {
    /*
         Model: GetPdfUrlViewResponseData
         Used By: Finance
     */

    class GetPdfUrlViewResponseData: Codable {
        public var s3PdfLink: String?

        public var cnReferenceNumber: String?

        public enum CodingKeys: String, CodingKey {
            case s3PdfLink = "s3_pdf_link"

            case cnReferenceNumber = "cn_reference_number"
        }

        public init(cnReferenceNumber: String? = nil, s3PdfLink: String? = nil) {
            self.s3PdfLink = s3PdfLink

            self.cnReferenceNumber = cnReferenceNumber
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                s3PdfLink = try container.decode(String.self, forKey: .s3PdfLink)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cnReferenceNumber = try container.decode(String.self, forKey: .cnReferenceNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(s3PdfLink, forKey: .s3PdfLink)

            try? container.encodeIfPresent(cnReferenceNumber, forKey: .cnReferenceNumber)
        }
    }
}
