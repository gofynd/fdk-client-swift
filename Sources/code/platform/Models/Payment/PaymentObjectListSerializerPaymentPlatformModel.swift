

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var paymentId: String?

        public var amountInPaisa: String

        public var currency: String

        public var applicationId: String

        public var collectedBy: String

        public var refundedBy: String

        public var userObject: [String: Any]

        public var paymentGateway: String

        public var aggregatorPaymentObject: [String: Any]?

        public var currentStatus: String

        public var paymentModeIdentifier: String

        public var refundObject: [String: Any]?

        public var allStatus: [String]

        public var companyId: String

        public var createdOn: String

        public var id: String

        public var modifiedOn: String

        public var paymentMode: String

        public enum CodingKeys: String, CodingKey {
            case paymentId = "payment_id"

            case amountInPaisa = "amount_in_paisa"

            case currency

            case applicationId = "application_id"

            case collectedBy = "collected_by"

            case refundedBy = "refunded_by"

            case userObject = "user_object"

            case paymentGateway = "payment_gateway"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case currentStatus = "current_status"

            case paymentModeIdentifier = "payment_mode_identifier"

            case refundObject = "refund_object"

            case allStatus = "all_status"

            case companyId = "company_id"

            case createdOn = "created_on"

            case id

            case modifiedOn = "modified_on"

            case paymentMode = "payment_mode"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.paymentId = paymentId

            self.amountInPaisa = amountInPaisa

            self.currency = currency

            self.applicationId = applicationId

            self.collectedBy = collectedBy

            self.refundedBy = refundedBy

            self.userObject = userObject

            self.paymentGateway = paymentGateway

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.currentStatus = currentStatus

            self.paymentModeIdentifier = paymentModeIdentifier

            self.refundObject = refundObject

            self.allStatus = allStatus

            self.companyId = companyId

            self.createdOn = createdOn

            self.id = id

            self.modifiedOn = modifiedOn

            self.paymentMode = paymentMode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            currency = try container.decode(String.self, forKey: .currency)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            allStatus = try container.decode([String].self, forKey: .allStatus)

            companyId = try container.decode(String.self, forKey: .companyId)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            id = try container.decode(String.self, forKey: .id)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var paymentId: String?

        public var amountInPaisa: String

        public var currency: String

        public var applicationId: String

        public var collectedBy: String

        public var refundedBy: String

        public var userObject: [String: Any]

        public var paymentGateway: String

        public var aggregatorPaymentObject: [String: Any]?

        public var currentStatus: String

        public var paymentModeIdentifier: String

        public var refundObject: [String: Any]?

        public var allStatus: [String]

        public var companyId: String

        public var createdOn: String

        public var id: String

        public var modifiedOn: String

        public var paymentMode: String

        public enum CodingKeys: String, CodingKey {
            case paymentId = "payment_id"

            case amountInPaisa = "amount_in_paisa"

            case currency

            case applicationId = "application_id"

            case collectedBy = "collected_by"

            case refundedBy = "refunded_by"

            case userObject = "user_object"

            case paymentGateway = "payment_gateway"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case currentStatus = "current_status"

            case paymentModeIdentifier = "payment_mode_identifier"

            case refundObject = "refund_object"

            case allStatus = "all_status"

            case companyId = "company_id"

            case createdOn = "created_on"

            case id

            case modifiedOn = "modified_on"

            case paymentMode = "payment_mode"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.paymentId = paymentId

            self.amountInPaisa = amountInPaisa

            self.currency = currency

            self.applicationId = applicationId

            self.collectedBy = collectedBy

            self.refundedBy = refundedBy

            self.userObject = userObject

            self.paymentGateway = paymentGateway

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.currentStatus = currentStatus

            self.paymentModeIdentifier = paymentModeIdentifier

            self.refundObject = refundObject

            self.allStatus = allStatus

            self.companyId = companyId

            self.createdOn = createdOn

            self.id = id

            self.modifiedOn = modifiedOn

            self.paymentMode = paymentMode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            currency = try container.decode(String.self, forKey: .currency)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            allStatus = try container.decode([String].self, forKey: .allStatus)

            companyId = try container.decode(String.self, forKey: .companyId)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            id = try container.decode(String.self, forKey: .id)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
        }
    }
}
