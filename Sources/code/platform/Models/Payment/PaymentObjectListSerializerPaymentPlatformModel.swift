

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var id: String

        public var aggregatorPaymentObject: [String: Any]?

        public var collectedBy: String

        public var companyId: String

        public var refundedBy: String

        public var paymentMode: String

        public var userObject: [String: Any]

        public var createdOn: String

        public var modifiedOn: String

        public var refundObject: [String: Any]?

        public var paymentGateway: String

        public var currency: String

        public var paymentId: String?

        public var currentStatus: String

        public var paymentModeIdentifier: String

        public var amountInPaisa: String

        public var allStatus: [String]

        public var applicationId: String

        public enum CodingKeys: String, CodingKey {
            case id

            case aggregatorPaymentObject = "aggregator_payment_object"

            case collectedBy = "collected_by"

            case companyId = "company_id"

            case refundedBy = "refunded_by"

            case paymentMode = "payment_mode"

            case userObject = "user_object"

            case createdOn = "created_on"

            case modifiedOn = "modified_on"

            case refundObject = "refund_object"

            case paymentGateway = "payment_gateway"

            case currency

            case paymentId = "payment_id"

            case currentStatus = "current_status"

            case paymentModeIdentifier = "payment_mode_identifier"

            case amountInPaisa = "amount_in_paisa"

            case allStatus = "all_status"

            case applicationId = "application_id"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.id = id

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.collectedBy = collectedBy

            self.companyId = companyId

            self.refundedBy = refundedBy

            self.paymentMode = paymentMode

            self.userObject = userObject

            self.createdOn = createdOn

            self.modifiedOn = modifiedOn

            self.refundObject = refundObject

            self.paymentGateway = paymentGateway

            self.currency = currency

            self.paymentId = paymentId

            self.currentStatus = currentStatus

            self.paymentModeIdentifier = paymentModeIdentifier

            self.amountInPaisa = amountInPaisa

            self.allStatus = allStatus

            self.applicationId = applicationId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(String.self, forKey: .id)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            companyId = try container.decode(String.self, forKey: .companyId)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            currency = try container.decode(String.self, forKey: .currency)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            applicationId = try container.decode(String.self, forKey: .applicationId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var id: String

        public var aggregatorPaymentObject: [String: Any]?

        public var collectedBy: String

        public var companyId: String

        public var refundedBy: String

        public var paymentMode: String

        public var userObject: [String: Any]

        public var createdOn: String

        public var modifiedOn: String

        public var refundObject: [String: Any]?

        public var paymentGateway: String

        public var currency: String

        public var paymentId: String?

        public var currentStatus: String

        public var paymentModeIdentifier: String

        public var amountInPaisa: String

        public var allStatus: [String]

        public var applicationId: String

        public enum CodingKeys: String, CodingKey {
            case id

            case aggregatorPaymentObject = "aggregator_payment_object"

            case collectedBy = "collected_by"

            case companyId = "company_id"

            case refundedBy = "refunded_by"

            case paymentMode = "payment_mode"

            case userObject = "user_object"

            case createdOn = "created_on"

            case modifiedOn = "modified_on"

            case refundObject = "refund_object"

            case paymentGateway = "payment_gateway"

            case currency

            case paymentId = "payment_id"

            case currentStatus = "current_status"

            case paymentModeIdentifier = "payment_mode_identifier"

            case amountInPaisa = "amount_in_paisa"

            case allStatus = "all_status"

            case applicationId = "application_id"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.id = id

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.collectedBy = collectedBy

            self.companyId = companyId

            self.refundedBy = refundedBy

            self.paymentMode = paymentMode

            self.userObject = userObject

            self.createdOn = createdOn

            self.modifiedOn = modifiedOn

            self.refundObject = refundObject

            self.paymentGateway = paymentGateway

            self.currency = currency

            self.paymentId = paymentId

            self.currentStatus = currentStatus

            self.paymentModeIdentifier = paymentModeIdentifier

            self.amountInPaisa = amountInPaisa

            self.allStatus = allStatus

            self.applicationId = applicationId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(String.self, forKey: .id)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            companyId = try container.decode(String.self, forKey: .companyId)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            currency = try container.decode(String.self, forKey: .currency)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            applicationId = try container.decode(String.self, forKey: .applicationId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
        }
    }
}
