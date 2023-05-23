

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */

    class OrderBeneficiaryDetails: Codable {
        public var subtitle: String

        public var email: String

        public var id: Int

        public var isActive: Bool

        public var comment: String?

        public var accountNo: String

        public var createdOn: String

        public var delightsUserName: String?

        public var displayName: String

        public var branchName: String?

        public var bankName: String

        public var ifscCode: String

        public var accountHolder: String

        public var transferMode: String

        public var beneficiaryId: String

        public var modifiedOn: String

        public var address: String

        public var title: String

        public var mobile: String?

        public enum CodingKeys: String, CodingKey {
            case subtitle

            case email

            case id

            case isActive = "is_active"

            case comment

            case accountNo = "account_no"

            case createdOn = "created_on"

            case delightsUserName = "delights_user_name"

            case displayName = "display_name"

            case branchName = "branch_name"

            case bankName = "bank_name"

            case ifscCode = "ifsc_code"

            case accountHolder = "account_holder"

            case transferMode = "transfer_mode"

            case beneficiaryId = "beneficiary_id"

            case modifiedOn = "modified_on"

            case address

            case title

            case mobile
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: String? = nil, comment: String? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: String? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.subtitle = subtitle

            self.email = email

            self.id = id

            self.isActive = isActive

            self.comment = comment

            self.accountNo = accountNo

            self.createdOn = createdOn

            self.delightsUserName = delightsUserName

            self.displayName = displayName

            self.branchName = branchName

            self.bankName = bankName

            self.ifscCode = ifscCode

            self.accountHolder = accountHolder

            self.transferMode = transferMode

            self.beneficiaryId = beneficiaryId

            self.modifiedOn = modifiedOn

            self.address = address

            self.title = title

            self.mobile = mobile
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            subtitle = try container.decode(String.self, forKey: .subtitle)

            email = try container.decode(String.self, forKey: .email)

            id = try container.decode(Int.self, forKey: .id)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            accountNo = try container.decode(String.self, forKey: .accountNo)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayName = try container.decode(String.self, forKey: .displayName)

            do {
                branchName = try container.decode(String.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bankName = try container.decode(String.self, forKey: .bankName)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            address = try container.decode(String.self, forKey: .address)

            title = try container.decode(String.self, forKey: .title)

            do {
                mobile = try container.decode(String.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(mobile, forKey: .mobile)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */

    class OrderBeneficiaryDetails: Codable {
        public var subtitle: String

        public var email: String

        public var id: Int

        public var isActive: Bool

        public var comment: String?

        public var accountNo: String

        public var createdOn: String

        public var delightsUserName: String?

        public var displayName: String

        public var branchName: String?

        public var bankName: String

        public var ifscCode: String

        public var accountHolder: String

        public var transferMode: String

        public var beneficiaryId: String

        public var modifiedOn: String

        public var address: String

        public var title: String

        public var mobile: String?

        public enum CodingKeys: String, CodingKey {
            case subtitle

            case email

            case id

            case isActive = "is_active"

            case comment

            case accountNo = "account_no"

            case createdOn = "created_on"

            case delightsUserName = "delights_user_name"

            case displayName = "display_name"

            case branchName = "branch_name"

            case bankName = "bank_name"

            case ifscCode = "ifsc_code"

            case accountHolder = "account_holder"

            case transferMode = "transfer_mode"

            case beneficiaryId = "beneficiary_id"

            case modifiedOn = "modified_on"

            case address

            case title

            case mobile
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: String? = nil, comment: String? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: String? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.subtitle = subtitle

            self.email = email

            self.id = id

            self.isActive = isActive

            self.comment = comment

            self.accountNo = accountNo

            self.createdOn = createdOn

            self.delightsUserName = delightsUserName

            self.displayName = displayName

            self.branchName = branchName

            self.bankName = bankName

            self.ifscCode = ifscCode

            self.accountHolder = accountHolder

            self.transferMode = transferMode

            self.beneficiaryId = beneficiaryId

            self.modifiedOn = modifiedOn

            self.address = address

            self.title = title

            self.mobile = mobile
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            subtitle = try container.decode(String.self, forKey: .subtitle)

            email = try container.decode(String.self, forKey: .email)

            id = try container.decode(Int.self, forKey: .id)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            accountNo = try container.decode(String.self, forKey: .accountNo)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayName = try container.decode(String.self, forKey: .displayName)

            do {
                branchName = try container.decode(String.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bankName = try container.decode(String.self, forKey: .bankName)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            address = try container.decode(String.self, forKey: .address)

            title = try container.decode(String.self, forKey: .title)

            do {
                mobile = try container.decode(String.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(mobile, forKey: .mobile)
        }
    }
}
