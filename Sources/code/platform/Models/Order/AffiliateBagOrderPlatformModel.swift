

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var deliveryCharge: Double

        public var pdfLinks: MarketPlacePdf?

        public var affiliateMeta: [String: Any]

        public var sellerIdentifier: String

        public var quantity: Int

        public var storeId: Int

        public var transferPrice: Int

        public var priceMarked: Double

        public var modifiedOn: String

        public var sku: String

        public var discount: Double

        public var itemId: Int

        public var priceEffective: Double

        public var amountPaid: Double

        public var fyndStoreId: String

        public var hsnCodeId: String

        public var itemSize: String

        public var companyId: Int

        public var unitPrice: Double

        public var affiliateStoreId: String

        public var id: String

        public var avlQty: Int

        public var identifier: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case deliveryCharge = "delivery_charge"

            case pdfLinks = "pdf_links"

            case affiliateMeta = "affiliate_meta"

            case sellerIdentifier = "seller_identifier"

            case quantity

            case storeId = "store_id"

            case transferPrice = "transfer_price"

            case priceMarked = "price_marked"

            case modifiedOn = "modified_on"

            case sku

            case discount

            case itemId = "item_id"

            case priceEffective = "price_effective"

            case amountPaid = "amount_paid"

            case fyndStoreId = "fynd_store_id"

            case hsnCodeId = "hsn_code_id"

            case itemSize = "item_size"

            case companyId = "company_id"

            case unitPrice = "unit_price"

            case affiliateStoreId = "affiliate_store_id"

            case id = "_id"

            case avlQty = "avl_qty"

            case identifier
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.deliveryCharge = deliveryCharge

            self.pdfLinks = pdfLinks

            self.affiliateMeta = affiliateMeta

            self.sellerIdentifier = sellerIdentifier

            self.quantity = quantity

            self.storeId = storeId

            self.transferPrice = transferPrice

            self.priceMarked = priceMarked

            self.modifiedOn = modifiedOn

            self.sku = sku

            self.discount = discount

            self.itemId = itemId

            self.priceEffective = priceEffective

            self.amountPaid = amountPaid

            self.fyndStoreId = fyndStoreId

            self.hsnCodeId = hsnCodeId

            self.itemSize = itemSize

            self.companyId = companyId

            self.unitPrice = unitPrice

            self.affiliateStoreId = affiliateStoreId

            self.id = id

            self.avlQty = avlQty

            self.identifier = identifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            quantity = try container.decode(Int.self, forKey: .quantity)

            storeId = try container.decode(Int.self, forKey: .storeId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            sku = try container.decode(String.self, forKey: .sku)

            discount = try container.decode(Double.self, forKey: .discount)

            itemId = try container.decode(Int.self, forKey: .itemId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            companyId = try container.decode(Int.self, forKey: .companyId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            id = try container.decode(String.self, forKey: .id)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            identifier = try container.decode([String: Any].self, forKey: .identifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(identifier, forKey: .identifier)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var deliveryCharge: Double

        public var pdfLinks: MarketPlacePdf?

        public var affiliateMeta: [String: Any]

        public var sellerIdentifier: String

        public var quantity: Int

        public var storeId: Int

        public var transferPrice: Int

        public var priceMarked: Double

        public var modifiedOn: String

        public var sku: String

        public var discount: Double

        public var itemId: Int

        public var priceEffective: Double

        public var amountPaid: Double

        public var fyndStoreId: String

        public var hsnCodeId: String

        public var itemSize: String

        public var companyId: Int

        public var unitPrice: Double

        public var affiliateStoreId: String

        public var id: String

        public var avlQty: Int

        public var identifier: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case deliveryCharge = "delivery_charge"

            case pdfLinks = "pdf_links"

            case affiliateMeta = "affiliate_meta"

            case sellerIdentifier = "seller_identifier"

            case quantity

            case storeId = "store_id"

            case transferPrice = "transfer_price"

            case priceMarked = "price_marked"

            case modifiedOn = "modified_on"

            case sku

            case discount

            case itemId = "item_id"

            case priceEffective = "price_effective"

            case amountPaid = "amount_paid"

            case fyndStoreId = "fynd_store_id"

            case hsnCodeId = "hsn_code_id"

            case itemSize = "item_size"

            case companyId = "company_id"

            case unitPrice = "unit_price"

            case affiliateStoreId = "affiliate_store_id"

            case id = "_id"

            case avlQty = "avl_qty"

            case identifier
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.deliveryCharge = deliveryCharge

            self.pdfLinks = pdfLinks

            self.affiliateMeta = affiliateMeta

            self.sellerIdentifier = sellerIdentifier

            self.quantity = quantity

            self.storeId = storeId

            self.transferPrice = transferPrice

            self.priceMarked = priceMarked

            self.modifiedOn = modifiedOn

            self.sku = sku

            self.discount = discount

            self.itemId = itemId

            self.priceEffective = priceEffective

            self.amountPaid = amountPaid

            self.fyndStoreId = fyndStoreId

            self.hsnCodeId = hsnCodeId

            self.itemSize = itemSize

            self.companyId = companyId

            self.unitPrice = unitPrice

            self.affiliateStoreId = affiliateStoreId

            self.id = id

            self.avlQty = avlQty

            self.identifier = identifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            quantity = try container.decode(Int.self, forKey: .quantity)

            storeId = try container.decode(Int.self, forKey: .storeId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            sku = try container.decode(String.self, forKey: .sku)

            discount = try container.decode(Double.self, forKey: .discount)

            itemId = try container.decode(Int.self, forKey: .itemId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            companyId = try container.decode(Int.self, forKey: .companyId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            id = try container.decode(String.self, forKey: .id)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            identifier = try container.decode([String: Any].self, forKey: .identifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(identifier, forKey: .identifier)
        }
    }
}
