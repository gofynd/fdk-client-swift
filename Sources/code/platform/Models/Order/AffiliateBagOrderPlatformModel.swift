

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var companyId: Int

        public var hsnCodeId: String

        public var sku: String

        public var affiliateMeta: [String: Any]

        public var deliveryCharge: Double

        public var unitPrice: Double

        public var fyndStoreId: String

        public var priceMarked: Double

        public var sellerIdentifier: String

        public var itemSize: String

        public var itemId: Int

        public var id: String

        public var priceEffective: Double

        public var pdfLinks: MarketPlacePdf?

        public var affiliateStoreId: String

        public var transferPrice: Int

        public var storeId: Int

        public var identifier: [String: Any]

        public var avlQty: Int

        public var amountPaid: Double

        public var modifiedOn: String

        public var discount: Double

        public var quantity: Int

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case hsnCodeId = "hsn_code_id"

            case sku

            case affiliateMeta = "affiliate_meta"

            case deliveryCharge = "delivery_charge"

            case unitPrice = "unit_price"

            case fyndStoreId = "fynd_store_id"

            case priceMarked = "price_marked"

            case sellerIdentifier = "seller_identifier"

            case itemSize = "item_size"

            case itemId = "item_id"

            case id = "_id"

            case priceEffective = "price_effective"

            case pdfLinks = "pdf_links"

            case affiliateStoreId = "affiliate_store_id"

            case transferPrice = "transfer_price"

            case storeId = "store_id"

            case identifier

            case avlQty = "avl_qty"

            case amountPaid = "amount_paid"

            case modifiedOn = "modified_on"

            case discount

            case quantity
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.companyId = companyId

            self.hsnCodeId = hsnCodeId

            self.sku = sku

            self.affiliateMeta = affiliateMeta

            self.deliveryCharge = deliveryCharge

            self.unitPrice = unitPrice

            self.fyndStoreId = fyndStoreId

            self.priceMarked = priceMarked

            self.sellerIdentifier = sellerIdentifier

            self.itemSize = itemSize

            self.itemId = itemId

            self.id = id

            self.priceEffective = priceEffective

            self.pdfLinks = pdfLinks

            self.affiliateStoreId = affiliateStoreId

            self.transferPrice = transferPrice

            self.storeId = storeId

            self.identifier = identifier

            self.avlQty = avlQty

            self.amountPaid = amountPaid

            self.modifiedOn = modifiedOn

            self.discount = discount

            self.quantity = quantity
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            companyId = try container.decode(Int.self, forKey: .companyId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            sku = try container.decode(String.self, forKey: .sku)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            itemId = try container.decode(Int.self, forKey: .itemId)

            id = try container.decode(String.self, forKey: .id)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            storeId = try container.decode(Int.self, forKey: .storeId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            discount = try container.decode(Double.self, forKey: .discount)

            quantity = try container.decode(Int.self, forKey: .quantity)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(quantity, forKey: .quantity)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var companyId: Int

        public var hsnCodeId: String

        public var sku: String

        public var affiliateMeta: [String: Any]

        public var deliveryCharge: Double

        public var unitPrice: Double

        public var fyndStoreId: String

        public var priceMarked: Double

        public var sellerIdentifier: String

        public var itemSize: String

        public var itemId: Int

        public var id: String

        public var priceEffective: Double

        public var pdfLinks: MarketPlacePdf?

        public var affiliateStoreId: String

        public var transferPrice: Int

        public var storeId: Int

        public var identifier: [String: Any]

        public var avlQty: Int

        public var amountPaid: Double

        public var modifiedOn: String

        public var discount: Double

        public var quantity: Int

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case hsnCodeId = "hsn_code_id"

            case sku

            case affiliateMeta = "affiliate_meta"

            case deliveryCharge = "delivery_charge"

            case unitPrice = "unit_price"

            case fyndStoreId = "fynd_store_id"

            case priceMarked = "price_marked"

            case sellerIdentifier = "seller_identifier"

            case itemSize = "item_size"

            case itemId = "item_id"

            case id = "_id"

            case priceEffective = "price_effective"

            case pdfLinks = "pdf_links"

            case affiliateStoreId = "affiliate_store_id"

            case transferPrice = "transfer_price"

            case storeId = "store_id"

            case identifier

            case avlQty = "avl_qty"

            case amountPaid = "amount_paid"

            case modifiedOn = "modified_on"

            case discount

            case quantity
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.companyId = companyId

            self.hsnCodeId = hsnCodeId

            self.sku = sku

            self.affiliateMeta = affiliateMeta

            self.deliveryCharge = deliveryCharge

            self.unitPrice = unitPrice

            self.fyndStoreId = fyndStoreId

            self.priceMarked = priceMarked

            self.sellerIdentifier = sellerIdentifier

            self.itemSize = itemSize

            self.itemId = itemId

            self.id = id

            self.priceEffective = priceEffective

            self.pdfLinks = pdfLinks

            self.affiliateStoreId = affiliateStoreId

            self.transferPrice = transferPrice

            self.storeId = storeId

            self.identifier = identifier

            self.avlQty = avlQty

            self.amountPaid = amountPaid

            self.modifiedOn = modifiedOn

            self.discount = discount

            self.quantity = quantity
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            companyId = try container.decode(Int.self, forKey: .companyId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            sku = try container.decode(String.self, forKey: .sku)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            itemId = try container.decode(Int.self, forKey: .itemId)

            id = try container.decode(String.self, forKey: .id)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            storeId = try container.decode(Int.self, forKey: .storeId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            discount = try container.decode(Double.self, forKey: .discount)

            quantity = try container.decode(Int.self, forKey: .quantity)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(quantity, forKey: .quantity)
        }
    }
}
