

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var amountPaid: Double

        public var discount: Double

        public var companyId: Int

        public var modifiedOn: String

        public var deliveryCharge: Double

        public var hsnCodeId: String

        public var priceEffective: Double

        public var id: String

        public var sellerIdentifier: String

        public var affiliateMeta: [String: Any]

        public var itemId: Int

        public var pdfLinks: MarketPlacePdf?

        public var quantity: Int

        public var identifier: [String: Any]

        public var transferPrice: Int

        public var itemSize: String

        public var avlQty: Int

        public var priceMarked: Double

        public var sku: String

        public var storeId: Int

        public var unitPrice: Double

        public var fyndStoreId: String

        public var affiliateStoreId: String

        public enum CodingKeys: String, CodingKey {
            case amountPaid = "amount_paid"

            case discount

            case companyId = "company_id"

            case modifiedOn = "modified_on"

            case deliveryCharge = "delivery_charge"

            case hsnCodeId = "hsn_code_id"

            case priceEffective = "price_effective"

            case id = "_id"

            case sellerIdentifier = "seller_identifier"

            case affiliateMeta = "affiliate_meta"

            case itemId = "item_id"

            case pdfLinks = "pdf_links"

            case quantity

            case identifier

            case transferPrice = "transfer_price"

            case itemSize = "item_size"

            case avlQty = "avl_qty"

            case priceMarked = "price_marked"

            case sku

            case storeId = "store_id"

            case unitPrice = "unit_price"

            case fyndStoreId = "fynd_store_id"

            case affiliateStoreId = "affiliate_store_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.amountPaid = amountPaid

            self.discount = discount

            self.companyId = companyId

            self.modifiedOn = modifiedOn

            self.deliveryCharge = deliveryCharge

            self.hsnCodeId = hsnCodeId

            self.priceEffective = priceEffective

            self.id = id

            self.sellerIdentifier = sellerIdentifier

            self.affiliateMeta = affiliateMeta

            self.itemId = itemId

            self.pdfLinks = pdfLinks

            self.quantity = quantity

            self.identifier = identifier

            self.transferPrice = transferPrice

            self.itemSize = itemSize

            self.avlQty = avlQty

            self.priceMarked = priceMarked

            self.sku = sku

            self.storeId = storeId

            self.unitPrice = unitPrice

            self.fyndStoreId = fyndStoreId

            self.affiliateStoreId = affiliateStoreId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            discount = try container.decode(Double.self, forKey: .discount)

            companyId = try container.decode(Int.self, forKey: .companyId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            id = try container.decode(String.self, forKey: .id)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            quantity = try container.decode(Int.self, forKey: .quantity)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            sku = try container.decode(String.self, forKey: .sku)

            storeId = try container.decode(Int.self, forKey: .storeId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var amountPaid: Double

        public var discount: Double

        public var companyId: Int

        public var modifiedOn: String

        public var deliveryCharge: Double

        public var hsnCodeId: String

        public var priceEffective: Double

        public var id: String

        public var sellerIdentifier: String

        public var affiliateMeta: [String: Any]

        public var itemId: Int

        public var pdfLinks: MarketPlacePdf?

        public var quantity: Int

        public var identifier: [String: Any]

        public var transferPrice: Int

        public var itemSize: String

        public var avlQty: Int

        public var priceMarked: Double

        public var sku: String

        public var storeId: Int

        public var unitPrice: Double

        public var fyndStoreId: String

        public var affiliateStoreId: String

        public enum CodingKeys: String, CodingKey {
            case amountPaid = "amount_paid"

            case discount

            case companyId = "company_id"

            case modifiedOn = "modified_on"

            case deliveryCharge = "delivery_charge"

            case hsnCodeId = "hsn_code_id"

            case priceEffective = "price_effective"

            case id = "_id"

            case sellerIdentifier = "seller_identifier"

            case affiliateMeta = "affiliate_meta"

            case itemId = "item_id"

            case pdfLinks = "pdf_links"

            case quantity

            case identifier

            case transferPrice = "transfer_price"

            case itemSize = "item_size"

            case avlQty = "avl_qty"

            case priceMarked = "price_marked"

            case sku

            case storeId = "store_id"

            case unitPrice = "unit_price"

            case fyndStoreId = "fynd_store_id"

            case affiliateStoreId = "affiliate_store_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.amountPaid = amountPaid

            self.discount = discount

            self.companyId = companyId

            self.modifiedOn = modifiedOn

            self.deliveryCharge = deliveryCharge

            self.hsnCodeId = hsnCodeId

            self.priceEffective = priceEffective

            self.id = id

            self.sellerIdentifier = sellerIdentifier

            self.affiliateMeta = affiliateMeta

            self.itemId = itemId

            self.pdfLinks = pdfLinks

            self.quantity = quantity

            self.identifier = identifier

            self.transferPrice = transferPrice

            self.itemSize = itemSize

            self.avlQty = avlQty

            self.priceMarked = priceMarked

            self.sku = sku

            self.storeId = storeId

            self.unitPrice = unitPrice

            self.fyndStoreId = fyndStoreId

            self.affiliateStoreId = affiliateStoreId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            discount = try container.decode(Double.self, forKey: .discount)

            companyId = try container.decode(Int.self, forKey: .companyId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            id = try container.decode(String.self, forKey: .id)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            quantity = try container.decode(Int.self, forKey: .quantity)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            sku = try container.decode(String.self, forKey: .sku)

            storeId = try container.decode(Int.self, forKey: .storeId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)
        }
    }
}
