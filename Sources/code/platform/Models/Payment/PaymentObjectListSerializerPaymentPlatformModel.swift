

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var paymentGateway: String

        public var refundedBy: String

        public var userObject: [String: Any]

        public var collectedBy: String

        public var currency: String

        public var currentStatus: String

        public var modifiedOn: String

        public var allStatus: [String]

        public var paymentMode: String

        public var amountInPaisa: String

        public var id: String

        public var paymentId: String?

        public var applicationId: String

        public var aggregatorPaymentObject: [String: Any]?

        public var paymentModeIdentifier: String

        public var refundObject: [String: Any]?

        public var createdOn: String

        public var companyId: String

        public enum CodingKeys: String, CodingKey {
            case paymentGateway = "payment_gateway"

            case refundedBy = "refunded_by"

            case userObject = "user_object"

            case collectedBy = "collected_by"

            case currency

            case currentStatus = "current_status"

            case modifiedOn = "modified_on"

            case allStatus = "all_status"

            case paymentMode = "payment_mode"

            case amountInPaisa = "amount_in_paisa"

            case id

            case paymentId = "payment_id"

            case applicationId = "application_id"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case paymentModeIdentifier = "payment_mode_identifier"

            case refundObject = "refund_object"

            case createdOn = "created_on"

            case companyId = "company_id"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.paymentGateway = paymentGateway

            self.refundedBy = refundedBy

            self.userObject = userObject

            self.collectedBy = collectedBy

            self.currency = currency

            self.currentStatus = currentStatus

            self.modifiedOn = modifiedOn

            self.allStatus = allStatus

            self.paymentMode = paymentMode

            self.amountInPaisa = amountInPaisa

            self.id = id

            self.paymentId = paymentId

            self.applicationId = applicationId

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.paymentModeIdentifier = paymentModeIdentifier

            self.refundObject = refundObject

            self.createdOn = createdOn

            self.companyId = companyId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            currency = try container.decode(String.self, forKey: .currency)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            id = try container.decode(String.self, forKey: .id)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            applicationId = try container.decode(String.self, forKey: .applicationId)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdOn = try container.decode(String.self, forKey: .createdOn)

            companyId = try container.decode(String.self, forKey: .companyId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var paymentGateway: String

        public var refundedBy: String

        public var userObject: [String: Any]

        public var collectedBy: String

        public var currency: String

        public var currentStatus: String

        public var modifiedOn: String

        public var allStatus: [String]

        public var paymentMode: String

        public var amountInPaisa: String

        public var id: String

        public var paymentId: String?

        public var applicationId: String

        public var aggregatorPaymentObject: [String: Any]?

        public var paymentModeIdentifier: String

        public var refundObject: [String: Any]?

        public var createdOn: String

        public var companyId: String

        public enum CodingKeys: String, CodingKey {
            case paymentGateway = "payment_gateway"

            case refundedBy = "refunded_by"

            case userObject = "user_object"

            case collectedBy = "collected_by"

            case currency

            case currentStatus = "current_status"

            case modifiedOn = "modified_on"

            case allStatus = "all_status"

            case paymentMode = "payment_mode"

            case amountInPaisa = "amount_in_paisa"

            case id

            case paymentId = "payment_id"

            case applicationId = "application_id"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case paymentModeIdentifier = "payment_mode_identifier"

            case refundObject = "refund_object"

            case createdOn = "created_on"

            case companyId = "company_id"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.paymentGateway = paymentGateway

            self.refundedBy = refundedBy

            self.userObject = userObject

            self.collectedBy = collectedBy

            self.currency = currency

            self.currentStatus = currentStatus

            self.modifiedOn = modifiedOn

            self.allStatus = allStatus

            self.paymentMode = paymentMode

            self.amountInPaisa = amountInPaisa

            self.id = id

            self.paymentId = paymentId

            self.applicationId = applicationId

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.paymentModeIdentifier = paymentModeIdentifier

            self.refundObject = refundObject

            self.createdOn = createdOn

            self.companyId = companyId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            currency = try container.decode(String.self, forKey: .currency)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            id = try container.decode(String.self, forKey: .id)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            applicationId = try container.decode(String.self, forKey: .applicationId)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdOn = try container.decode(String.self, forKey: .createdOn)

            companyId = try container.decode(String.self, forKey: .companyId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
        }
    }
}
