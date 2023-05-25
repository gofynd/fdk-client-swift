

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var avlQty: Int

        public var companyId: Int

        public var unitPrice: Double

        public var modifiedOn: String

        public var sku: String

        public var pdfLinks: MarketPlacePdf?

        public var id: String

        public var hsnCodeId: String

        public var fyndStoreId: String

        public var amountPaid: Double

        public var priceMarked: Double

        public var identifier: [String: Any]

        public var itemSize: String

        public var quantity: Int

        public var sellerIdentifier: String

        public var transferPrice: Int

        public var discount: Double

        public var affiliateMeta: [String: Any]

        public var storeId: Int

        public var affiliateStoreId: String

        public var priceEffective: Double

        public var deliveryCharge: Double

        public var itemId: Int

        public enum CodingKeys: String, CodingKey {
            case avlQty = "avl_qty"

            case companyId = "company_id"

            case unitPrice = "unit_price"

            case modifiedOn = "modified_on"

            case sku

            case pdfLinks = "pdf_links"

            case id = "_id"

            case hsnCodeId = "hsn_code_id"

            case fyndStoreId = "fynd_store_id"

            case amountPaid = "amount_paid"

            case priceMarked = "price_marked"

            case identifier

            case itemSize = "item_size"

            case quantity

            case sellerIdentifier = "seller_identifier"

            case transferPrice = "transfer_price"

            case discount

            case affiliateMeta = "affiliate_meta"

            case storeId = "store_id"

            case affiliateStoreId = "affiliate_store_id"

            case priceEffective = "price_effective"

            case deliveryCharge = "delivery_charge"

            case itemId = "item_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.avlQty = avlQty

            self.companyId = companyId

            self.unitPrice = unitPrice

            self.modifiedOn = modifiedOn

            self.sku = sku

            self.pdfLinks = pdfLinks

            self.id = id

            self.hsnCodeId = hsnCodeId

            self.fyndStoreId = fyndStoreId

            self.amountPaid = amountPaid

            self.priceMarked = priceMarked

            self.identifier = identifier

            self.itemSize = itemSize

            self.quantity = quantity

            self.sellerIdentifier = sellerIdentifier

            self.transferPrice = transferPrice

            self.discount = discount

            self.affiliateMeta = affiliateMeta

            self.storeId = storeId

            self.affiliateStoreId = affiliateStoreId

            self.priceEffective = priceEffective

            self.deliveryCharge = deliveryCharge

            self.itemId = itemId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            companyId = try container.decode(Int.self, forKey: .companyId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            sku = try container.decode(String.self, forKey: .sku)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            quantity = try container.decode(Int.self, forKey: .quantity)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            discount = try container.decode(Double.self, forKey: .discount)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            storeId = try container.decode(Int.self, forKey: .storeId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            itemId = try container.decode(Int.self, forKey: .itemId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(itemId, forKey: .itemId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var avlQty: Int

        public var companyId: Int

        public var unitPrice: Double

        public var modifiedOn: String

        public var sku: String

        public var pdfLinks: MarketPlacePdf?

        public var id: String

        public var hsnCodeId: String

        public var fyndStoreId: String

        public var amountPaid: Double

        public var priceMarked: Double

        public var identifier: [String: Any]

        public var itemSize: String

        public var quantity: Int

        public var sellerIdentifier: String

        public var transferPrice: Int

        public var discount: Double

        public var affiliateMeta: [String: Any]

        public var storeId: Int

        public var affiliateStoreId: String

        public var priceEffective: Double

        public var deliveryCharge: Double

        public var itemId: Int

        public enum CodingKeys: String, CodingKey {
            case avlQty = "avl_qty"

            case companyId = "company_id"

            case unitPrice = "unit_price"

            case modifiedOn = "modified_on"

            case sku

            case pdfLinks = "pdf_links"

            case id = "_id"

            case hsnCodeId = "hsn_code_id"

            case fyndStoreId = "fynd_store_id"

            case amountPaid = "amount_paid"

            case priceMarked = "price_marked"

            case identifier

            case itemSize = "item_size"

            case quantity

            case sellerIdentifier = "seller_identifier"

            case transferPrice = "transfer_price"

            case discount

            case affiliateMeta = "affiliate_meta"

            case storeId = "store_id"

            case affiliateStoreId = "affiliate_store_id"

            case priceEffective = "price_effective"

            case deliveryCharge = "delivery_charge"

            case itemId = "item_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.avlQty = avlQty

            self.companyId = companyId

            self.unitPrice = unitPrice

            self.modifiedOn = modifiedOn

            self.sku = sku

            self.pdfLinks = pdfLinks

            self.id = id

            self.hsnCodeId = hsnCodeId

            self.fyndStoreId = fyndStoreId

            self.amountPaid = amountPaid

            self.priceMarked = priceMarked

            self.identifier = identifier

            self.itemSize = itemSize

            self.quantity = quantity

            self.sellerIdentifier = sellerIdentifier

            self.transferPrice = transferPrice

            self.discount = discount

            self.affiliateMeta = affiliateMeta

            self.storeId = storeId

            self.affiliateStoreId = affiliateStoreId

            self.priceEffective = priceEffective

            self.deliveryCharge = deliveryCharge

            self.itemId = itemId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            companyId = try container.decode(Int.self, forKey: .companyId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            sku = try container.decode(String.self, forKey: .sku)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            quantity = try container.decode(Int.self, forKey: .quantity)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            discount = try container.decode(Double.self, forKey: .discount)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            storeId = try container.decode(Int.self, forKey: .storeId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            itemId = try container.decode(Int.self, forKey: .itemId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(itemId, forKey: .itemId)
        }
    }
}
