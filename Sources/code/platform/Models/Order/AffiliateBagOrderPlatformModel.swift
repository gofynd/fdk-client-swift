

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var sku: String

        public var id: String

        public var amountPaid: Double

        public var quantity: Int

        public var priceMarked: Double

        public var sellerIdentifier: String

        public var discount: Double

        public var affiliateMeta: [String: Any]

        public var itemSize: String

        public var hsnCodeId: String

        public var pdfLinks: MarketPlacePdf?

        public var deliveryCharge: Double

        public var priceEffective: Double

        public var affiliateStoreId: String

        public var itemId: Int

        public var companyId: Int

        public var avlQty: Int

        public var unitPrice: Double

        public var identifier: [String: Any]

        public var modifiedOn: String

        public var transferPrice: Int

        public var storeId: Int

        public var fyndStoreId: String

        public enum CodingKeys: String, CodingKey {
            case sku

            case id = "_id"

            case amountPaid = "amount_paid"

            case quantity

            case priceMarked = "price_marked"

            case sellerIdentifier = "seller_identifier"

            case discount

            case affiliateMeta = "affiliate_meta"

            case itemSize = "item_size"

            case hsnCodeId = "hsn_code_id"

            case pdfLinks = "pdf_links"

            case deliveryCharge = "delivery_charge"

            case priceEffective = "price_effective"

            case affiliateStoreId = "affiliate_store_id"

            case itemId = "item_id"

            case companyId = "company_id"

            case avlQty = "avl_qty"

            case unitPrice = "unit_price"

            case identifier

            case modifiedOn = "modified_on"

            case transferPrice = "transfer_price"

            case storeId = "store_id"

            case fyndStoreId = "fynd_store_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.sku = sku

            self.id = id

            self.amountPaid = amountPaid

            self.quantity = quantity

            self.priceMarked = priceMarked

            self.sellerIdentifier = sellerIdentifier

            self.discount = discount

            self.affiliateMeta = affiliateMeta

            self.itemSize = itemSize

            self.hsnCodeId = hsnCodeId

            self.pdfLinks = pdfLinks

            self.deliveryCharge = deliveryCharge

            self.priceEffective = priceEffective

            self.affiliateStoreId = affiliateStoreId

            self.itemId = itemId

            self.companyId = companyId

            self.avlQty = avlQty

            self.unitPrice = unitPrice

            self.identifier = identifier

            self.modifiedOn = modifiedOn

            self.transferPrice = transferPrice

            self.storeId = storeId

            self.fyndStoreId = fyndStoreId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            sku = try container.decode(String.self, forKey: .sku)

            id = try container.decode(String.self, forKey: .id)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            quantity = try container.decode(Int.self, forKey: .quantity)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            discount = try container.decode(Double.self, forKey: .discount)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            storeId = try container.decode(Int.self, forKey: .storeId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var sku: String

        public var id: String

        public var amountPaid: Double

        public var quantity: Int

        public var priceMarked: Double

        public var sellerIdentifier: String

        public var discount: Double

        public var affiliateMeta: [String: Any]

        public var itemSize: String

        public var hsnCodeId: String

        public var pdfLinks: MarketPlacePdf?

        public var deliveryCharge: Double

        public var priceEffective: Double

        public var affiliateStoreId: String

        public var itemId: Int

        public var companyId: Int

        public var avlQty: Int

        public var unitPrice: Double

        public var identifier: [String: Any]

        public var modifiedOn: String

        public var transferPrice: Int

        public var storeId: Int

        public var fyndStoreId: String

        public enum CodingKeys: String, CodingKey {
            case sku

            case id = "_id"

            case amountPaid = "amount_paid"

            case quantity

            case priceMarked = "price_marked"

            case sellerIdentifier = "seller_identifier"

            case discount

            case affiliateMeta = "affiliate_meta"

            case itemSize = "item_size"

            case hsnCodeId = "hsn_code_id"

            case pdfLinks = "pdf_links"

            case deliveryCharge = "delivery_charge"

            case priceEffective = "price_effective"

            case affiliateStoreId = "affiliate_store_id"

            case itemId = "item_id"

            case companyId = "company_id"

            case avlQty = "avl_qty"

            case unitPrice = "unit_price"

            case identifier

            case modifiedOn = "modified_on"

            case transferPrice = "transfer_price"

            case storeId = "store_id"

            case fyndStoreId = "fynd_store_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.sku = sku

            self.id = id

            self.amountPaid = amountPaid

            self.quantity = quantity

            self.priceMarked = priceMarked

            self.sellerIdentifier = sellerIdentifier

            self.discount = discount

            self.affiliateMeta = affiliateMeta

            self.itemSize = itemSize

            self.hsnCodeId = hsnCodeId

            self.pdfLinks = pdfLinks

            self.deliveryCharge = deliveryCharge

            self.priceEffective = priceEffective

            self.affiliateStoreId = affiliateStoreId

            self.itemId = itemId

            self.companyId = companyId

            self.avlQty = avlQty

            self.unitPrice = unitPrice

            self.identifier = identifier

            self.modifiedOn = modifiedOn

            self.transferPrice = transferPrice

            self.storeId = storeId

            self.fyndStoreId = fyndStoreId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            sku = try container.decode(String.self, forKey: .sku)

            id = try container.decode(String.self, forKey: .id)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            quantity = try container.decode(Int.self, forKey: .quantity)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            discount = try container.decode(Double.self, forKey: .discount)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            storeId = try container.decode(Int.self, forKey: .storeId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)
        }
    }
}
