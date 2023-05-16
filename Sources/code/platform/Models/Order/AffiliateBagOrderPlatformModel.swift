

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var discount: Double

        public var itemId: Int

        public var priceMarked: Double

        public var id: String

        public var hsnCodeId: String

        public var identifier: [String: Any]

        public var deliveryCharge: Double

        public var pdfLinks: MarketPlacePdf?

        public var priceEffective: Double

        public var affiliateStoreId: String

        public var affiliateMeta: [String: Any]

        public var amountPaid: Double

        public var storeId: Int

        public var sku: String

        public var unitPrice: Double

        public var quantity: Int

        public var fyndStoreId: String

        public var transferPrice: Int

        public var itemSize: String

        public var companyId: Int

        public var sellerIdentifier: String

        public var modifiedOn: String

        public var avlQty: Int

        public enum CodingKeys: String, CodingKey {
            case discount

            case itemId = "item_id"

            case priceMarked = "price_marked"

            case id = "_id"

            case hsnCodeId = "hsn_code_id"

            case identifier

            case deliveryCharge = "delivery_charge"

            case pdfLinks = "pdf_links"

            case priceEffective = "price_effective"

            case affiliateStoreId = "affiliate_store_id"

            case affiliateMeta = "affiliate_meta"

            case amountPaid = "amount_paid"

            case storeId = "store_id"

            case sku

            case unitPrice = "unit_price"

            case quantity

            case fyndStoreId = "fynd_store_id"

            case transferPrice = "transfer_price"

            case itemSize = "item_size"

            case companyId = "company_id"

            case sellerIdentifier = "seller_identifier"

            case modifiedOn = "modified_on"

            case avlQty = "avl_qty"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.discount = discount

            self.itemId = itemId

            self.priceMarked = priceMarked

            self.id = id

            self.hsnCodeId = hsnCodeId

            self.identifier = identifier

            self.deliveryCharge = deliveryCharge

            self.pdfLinks = pdfLinks

            self.priceEffective = priceEffective

            self.affiliateStoreId = affiliateStoreId

            self.affiliateMeta = affiliateMeta

            self.amountPaid = amountPaid

            self.storeId = storeId

            self.sku = sku

            self.unitPrice = unitPrice

            self.quantity = quantity

            self.fyndStoreId = fyndStoreId

            self.transferPrice = transferPrice

            self.itemSize = itemSize

            self.companyId = companyId

            self.sellerIdentifier = sellerIdentifier

            self.modifiedOn = modifiedOn

            self.avlQty = avlQty
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            discount = try container.decode(Double.self, forKey: .discount)

            itemId = try container.decode(Int.self, forKey: .itemId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            id = try container.decode(String.self, forKey: .id)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            storeId = try container.decode(Int.self, forKey: .storeId)

            sku = try container.decode(String.self, forKey: .sku)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            quantity = try container.decode(Int.self, forKey: .quantity)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            companyId = try container.decode(Int.self, forKey: .companyId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            avlQty = try container.decode(Int.self, forKey: .avlQty)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var discount: Double

        public var itemId: Int

        public var priceMarked: Double

        public var id: String

        public var hsnCodeId: String

        public var identifier: [String: Any]

        public var deliveryCharge: Double

        public var pdfLinks: MarketPlacePdf?

        public var priceEffective: Double

        public var affiliateStoreId: String

        public var affiliateMeta: [String: Any]

        public var amountPaid: Double

        public var storeId: Int

        public var sku: String

        public var unitPrice: Double

        public var quantity: Int

        public var fyndStoreId: String

        public var transferPrice: Int

        public var itemSize: String

        public var companyId: Int

        public var sellerIdentifier: String

        public var modifiedOn: String

        public var avlQty: Int

        public enum CodingKeys: String, CodingKey {
            case discount

            case itemId = "item_id"

            case priceMarked = "price_marked"

            case id = "_id"

            case hsnCodeId = "hsn_code_id"

            case identifier

            case deliveryCharge = "delivery_charge"

            case pdfLinks = "pdf_links"

            case priceEffective = "price_effective"

            case affiliateStoreId = "affiliate_store_id"

            case affiliateMeta = "affiliate_meta"

            case amountPaid = "amount_paid"

            case storeId = "store_id"

            case sku

            case unitPrice = "unit_price"

            case quantity

            case fyndStoreId = "fynd_store_id"

            case transferPrice = "transfer_price"

            case itemSize = "item_size"

            case companyId = "company_id"

            case sellerIdentifier = "seller_identifier"

            case modifiedOn = "modified_on"

            case avlQty = "avl_qty"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.discount = discount

            self.itemId = itemId

            self.priceMarked = priceMarked

            self.id = id

            self.hsnCodeId = hsnCodeId

            self.identifier = identifier

            self.deliveryCharge = deliveryCharge

            self.pdfLinks = pdfLinks

            self.priceEffective = priceEffective

            self.affiliateStoreId = affiliateStoreId

            self.affiliateMeta = affiliateMeta

            self.amountPaid = amountPaid

            self.storeId = storeId

            self.sku = sku

            self.unitPrice = unitPrice

            self.quantity = quantity

            self.fyndStoreId = fyndStoreId

            self.transferPrice = transferPrice

            self.itemSize = itemSize

            self.companyId = companyId

            self.sellerIdentifier = sellerIdentifier

            self.modifiedOn = modifiedOn

            self.avlQty = avlQty
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            discount = try container.decode(Double.self, forKey: .discount)

            itemId = try container.decode(Int.self, forKey: .itemId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            id = try container.decode(String.self, forKey: .id)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            storeId = try container.decode(Int.self, forKey: .storeId)

            sku = try container.decode(String.self, forKey: .sku)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            quantity = try container.decode(Int.self, forKey: .quantity)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            companyId = try container.decode(Int.self, forKey: .companyId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            avlQty = try container.decode(Int.self, forKey: .avlQty)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)
        }
    }
}
